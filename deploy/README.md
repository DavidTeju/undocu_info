# UndocuStudent Infrastructure

This folder contains configuration templates and documentation for the self-hosted Supabase infrastructure.

## Architecture

```
VPS (82.29.152.139)
├── /root/supabase-docker/          # Supabase Docker Compose
│   ├── docker-compose.yml          # Main compose file (from official repo)
│   ├── .env                        # Configuration (see .env.example)
│   └── volumes/
│       └── storage/                # File storage (campuses bucket)
│
├── /root/undocu_info/              # Application
│   └── app/
│       ├── .env                    # App config (connects to supabase_default network)
│       └── Dockerfile
│
├── /root/supabase-backups/         # Automated backups
│   ├── db_YYYYMMDD_HHMMSS.sql.gz
│   └── storage_YYYYMMDD_HHMMSS.tar.gz
│
└── nginx                           # Reverse proxy
    └── sites-enabled/
        ├── undocustudent.org       # Main app (:4173)
        ├── files.undocustudent.org # API + storage (:8000)
        ├── studio.undocustudent.org # Supabase Studio (:3001)
        └── analytics.undocustudent.org # Umami (:3002)
```

## Key Services

| Service | Internal Port | External URL |
|---------|--------------|--------------|
| Kong (API Gateway) | 8000 | https://files.undocustudent.org |
| PostgreSQL | 5432 | - |
| Supavisor (Pooler) | 6543 | External DB connections |
| GoTrue (Auth) | 9999 | via Kong |
| Storage | 5000 | via Kong |
| imgproxy | 5001 | via Kong |
| Studio | 3001 | https://studio.undocustudent.org |
| Umami Analytics | 3002 | https://analytics.undocustudent.org |

## Database Connections

**From Docker containers** (on `supabase_default` network):
```
DATABASE_URL=postgresql://postgres:PASSWORD@db:5432/postgres
SUPABASE_URL=http://kong:8000
```

**From external** (local development, CI):
```
DATABASE_URL=postgresql://postgres.undocustudent:PASSWORD@82.29.152.139:6543/postgres
```

Note: External connections use Supavisor pooler (port 6543) with tenant format username.

## Custom Modifications

The official Supabase docker-compose.yml has these modifications:

### 1. Email Templates (auth service)
```yaml
environment:
  GOTRUE_MAILER_TEMPLATES_MAGIC_LINK: ${GOTRUE_MAILER_TEMPLATES_MAGIC_LINK}
  GOTRUE_MAILER_TEMPLATES_RECOVERY: ${GOTRUE_MAILER_TEMPLATES_RECOVERY}
  GOTRUE_MAILER_TEMPLATES_INVITE: ${GOTRUE_MAILER_TEMPLATES_INVITE}
  GOTRUE_MAILER_TEMPLATES_CONFIRMATION: ${GOTRUE_MAILER_TEMPLATES_CONFIRMATION}
```

### 2. imgproxy Resolution Limit
```yaml
imgproxy:
  environment:
    IMGPROXY_MAX_SRC_RESOLUTION: 50
```

### 3. Studio Port Exposure
```yaml
studio:
  ports:
    - "3001:3000"
```

### 4. Umami Analytics
```yaml
umami:
  container_name: umami
  image: ghcr.io/umami-software/umami:postgresql-latest
  environment:
    DATABASE_URL: postgresql://postgres:${POSTGRES_PASSWORD}@db:5432/umami
    DATABASE_TYPE: postgresql
    APP_SECRET: ${UMAMI_APP_SECRET}
  depends_on:
    db:
      condition: service_healthy
  restart: unless-stopped
  ports:
    - "3002:3000"
```

## Umami Analytics

Frontend analytics at https://analytics.undocustudent.org

- Uses separate `umami` database in PostgreSQL
- Tracking script in `app/src/app.html`
- Dashboard: https://analytics.undocustudent.org (login required)

## Email Templates

Templates are served via nginx from `/var/www/email-templates/`:
- `magiclink.html` - OTP verification emails

Template URL: `https://undocustudent.org/email-templates/magiclink.html`

When updating templates:
1. Edit the template in this repo (`deploy/templates/`)
2. Copy to VPS: `scp deploy/templates/* root@82.29.152.139:/var/www/email-templates/`

## Backups

Automated daily backups via cron:
```bash
0 3 * * * /root/supabase-docker/backup.sh
```

Backup script (`/root/supabase-docker/backup.sh`):
- Database: pg_dump compressed to `.sql.gz`
- Storage: tar of volumes/storage to `.tar.gz`
- Retention: 7 days

Manual backup:
```bash
ssh root@82.29.152.139 '/root/supabase-docker/backup.sh'
```

## Common Operations

### Restart Supabase
```bash
cd /root/supabase-docker
docker compose down
docker compose up -d
```

### View logs
```bash
docker compose logs -f auth    # Auth service
docker compose logs -f kong    # API gateway
docker compose logs -f storage # Storage service
```

### Update Supabase
```bash
cd /root/supabase-docker
git pull
docker compose pull
docker compose up -d
```

### Database access
```bash
docker compose exec db psql -U postgres
```

## Secrets Management

Secrets are stored in `/root/supabase-docker/.env` on the VPS.

To generate new JWT keys:
```bash
# Using Node.js
node -e "console.log(require('crypto').randomBytes(32).toString('base64'))"

# Using openssl
openssl rand -base64 32
```

For ANON_KEY and SERVICE_ROLE_KEY, use the Supabase JWT generator or create manually with the correct claims.

## Nginx Configuration

Files subdomain serves:
- `/` → Kong API gateway (port 8000)

Main domain serves:
- `/email-templates/` → Static email templates (nginx)
- `/` → App container (port 4173)
