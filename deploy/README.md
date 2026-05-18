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
└── /etc/nginx/                     # Reverse proxy (git tracked)
    ├── conf.d/geoip-blocking.conf  # GeoIP country blocking
    ├── snippets/geoip-block.conf   # Blocking rule snippet
    └── sites-available/undocustudent  # All domains:
        ├── undocustudent.org       # Main app (:4173)
        ├── files.undocustudent.org # API + storage (:8000)
        ├── studio.undocustudent.org # Supabase Studio (:3001)
        └── analytics.undocustudent.org # Umami (:3002)
```

## Key Services

| Service            | Internal Port | Binding         | External URL                        |
| ------------------ | ------------- | --------------- | ----------------------------------- |
| Kong (API Gateway) | 8000          | 127.0.0.1:8000  | https://files.undocustudent.org     |
| Kong (HTTPS)       | 8443          | 127.0.0.1:8443  | -                                   |
| PostgreSQL         | 5432          | 127.0.0.1:5432  | -                                   |
| Supavisor (Pooler) | 6543          | 127.0.0.1:6543  | SSH tunnel for external connections |
| GoTrue (Auth)      | 9999          | not exposed     | via Kong                            |
| Storage            | 5000          | not exposed     | via Kong                            |
| imgproxy           | 5001          | not exposed     | via Kong                            |
| Analytics          | 4000          | 127.0.0.1:4000  | -                                   |
| Studio             | 3001          | 127.0.0.1:3001  | https://studio.undocustudent.org    |
| Umami Analytics    | 3002          | 127.0.0.1:3002  | https://analytics.undocustudent.org |
| App                | 4173          | 127.0.0.1:4173  | https://undocustudent.org           |

All services are bound to `127.0.0.1` so they are only reachable via nginx (or SSH tunnel). Only ports 22, 80, and 443 are publicly accessible.

## Firewall Configuration

```bash
ufw default deny incoming
ufw default allow outgoing
ufw allow 22/tcp     # SSH
ufw allow 80/tcp     # HTTP
ufw allow 443/tcp    # HTTPS
ufw enable
```

nginx provides the only entry point for external connections to apps and services.

## Database Connections

**From Docker containers** (on `supabase_default` network):

```
DATABASE_URL=postgresql://postgres:PASSWORD@db:5432/postgres
SUPABASE_URL=http://kong:8000
```

**From external** (local development, CI) — requires SSH tunnel since Supavisor is bound to localhost:

```bash
# Open tunnel (keep running in background)
ssh -L 6543:127.0.0.1:6543 root@82.29.152.139

# Then connect via localhost
DATABASE_URL=postgresql://postgres.undocustudent:PASSWORD@localhost:6543/postgres
```

Note: External connections use Supavisor pooler (port 6543) with tenant format username.

## Custom Modifications

The official Supabase docker-compose.yml has these modifications:

### 1. Email Templates & Subjects (auth service)

```yaml
environment:
  # Template URLs (hosted via nginx)
  GOTRUE_MAILER_TEMPLATES_MAGIC_LINK: ${GOTRUE_MAILER_TEMPLATES_MAGIC_LINK}
  GOTRUE_MAILER_TEMPLATES_RECOVERY: ${GOTRUE_MAILER_TEMPLATES_RECOVERY}
  GOTRUE_MAILER_TEMPLATES_INVITE: ${GOTRUE_MAILER_TEMPLATES_INVITE}
  GOTRUE_MAILER_TEMPLATES_CONFIRMATION: ${GOTRUE_MAILER_TEMPLATES_CONFIRMATION}
  # Email subjects
  GOTRUE_MAILER_SUBJECTS_MAGIC_LINK: ${GOTRUE_MAILER_SUBJECTS_MAGIC_LINK}
```

### 2. imgproxy Resolution Limit

```yaml
imgproxy:
  environment:
    IMGPROXY_MAX_SRC_RESOLUTION: 50
```

### 3. Port binding — localhost only

All published ports are bound to `127.0.0.1` so they are only reachable from the host (via nginx reverse proxy), not from the internet. Docker's default `0.0.0.0` binding bypasses ufw/firewall rules, so this must be enforced in the compose file itself.

```yaml
studio:
  ports:
    - "127.0.0.1:3001:3000"

kong:
  ports:
    - 127.0.0.1:${KONG_HTTP_PORT}:8000/tcp
    - 127.0.0.1:${KONG_HTTPS_PORT}:8443/tcp

analytics:
  ports:
    - "127.0.0.1:4000:4000"

supavisor:
  ports:
    - 127.0.0.1:${POSTGRES_PORT}:5432
    - 127.0.0.1:${POOLER_PROXY_PORT_TRANSACTION}:6543

umami:
  ports:
    - "127.0.0.1:3002:3000"
```

The app container (undocu_app) must also be run with `127.0.0.1` binding:

```bash
docker run -d --name undocu_app --network supabase_default \
  -p 127.0.0.1:4173:4173 --env-file .env undocu_app
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
    - "127.0.0.1:3002:3000"
```

## Umami Analytics

Frontend analytics at https://analytics.undocustudent.org

- Uses separate `umami` database in PostgreSQL
- Tracking script in `app/src/app.html`
- Dashboard: https://analytics.undocustudent.org (login required)

## Email Configuration

### Templates

Templates are served via nginx from `/var/www/email-templates/`:

- `magiclink.html` - OTP verification emails

Template URL: `https://undocustudent.org/email-templates/magiclink.html`

When updating templates:

1. Edit the template in this repo (`deploy/templates/`)
2. Copy to VPS: `scp deploy/templates/* root@82.29.152.139:/var/www/email-templates/`

### Email Subjects

Email subjects are configured via environment variables in `/root/supabase-docker/.env` on the VPS:

```env
GOTRUE_MAILER_SUBJECTS_MAGIC_LINK=Your Verification Code
GOTRUE_MAILER_SUBJECTS_RECOVERY=Reset Your Password
GOTRUE_MAILER_SUBJECTS_INVITE=You have been invited
GOTRUE_MAILER_SUBJECTS_CONFIRMATION=Confirm Your Email
```

These must also be passed to the auth service in `docker-compose.yml`:

```yaml
GOTRUE_MAILER_SUBJECTS_MAGIC_LINK: ${GOTRUE_MAILER_SUBJECTS_MAGIC_LINK}
```

After changing subjects, restart the auth service:

```bash
cd /root/supabase-docker && docker compose restart auth
```

## Backups

Automated daily backups via cron:

```bash
0 3 * * * /root/supabase-docker/backup.sh >> /var/log/supabase-backup.log 2>&1
```

Backup script (`/root/supabase-docker/backup.sh`):

- Database: pg_dump compressed to `.sql.gz`
- Storage: tar of volumes/storage to `.tar.gz`
- Retention: 7 days

Manual backup:

```bash
ssh root@82.29.152.139 '/root/supabase-docker/backup.sh'
```

## Request Logging

All HTTP requests are logged to stdout in structured JSON format for debugging and auditing.

### Log Format

```json
{
  "timestamp": "2026-01-25T12:34:56.789Z",
  "requestId": "550e8400-e29b-41d4-a716-446655440000",
  "method": "GET",
  "path": "/college/stanford.edu",
  "status": 200,
  "duration": 45,
  "userAgent": "Mozilla/5.0..."
}
```

### Fields

| Field     | Description                          |
| --------- | ------------------------------------ |
| timestamp | ISO 8601 timestamp                   |
| requestId | UUID for correlating logs            |
| method    | HTTP method (GET, POST, etc.)        |
| path      | URL pathname                         |
| status    | HTTP response status code            |
| duration  | Request duration in milliseconds     |
| userAgent | First 100 chars of User-Agent header |

### Viewing Logs

**In development:**

```bash
npm run dev
# Logs appear in terminal
```

**In production (Docker):**

```bash
docker logs -f undocu-app
# Or pipe to a logging service
docker logs undocu-app 2>&1 | your-log-shipper
```

**Filtering JSON logs:**

```bash
# Get all 500 errors
docker logs undocu-app 2>&1 | jq 'select(.status >= 500)'

# Get slow requests (>1s)
docker logs undocu-app 2>&1 | jq 'select(.duration > 1000)'

# Get requests to specific path
docker logs undocu-app 2>&1 | jq 'select(.path | startswith("/admin"))'
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

Nginx configs are version controlled directly on the VPS:

```bash
cd /etc/nginx && git log --oneline
```

Files subdomain serves:

- `/` → Kong API gateway (port 8000)

Main domain serves:

- `/email-templates/` → Static email templates (nginx)
- `/` → App container (port 4173)

### GeoIP Country Blocking

Traffic from certain countries is blocked at the nginx level using MaxMind's GeoLite2 database.

**Currently blocked:** Singapore (SG)

**Key files:**

- `/etc/nginx/conf.d/geoip-blocking.conf` - GeoIP2 database config and country map
- `/etc/nginx/snippets/geoip-block.conf` - Blocking rule (included in each site)
- `/etc/GeoIP.conf` - MaxMind credentials (account 1288100)
- `/usr/share/GeoIP/GeoLite2-Country.mmdb` - The database file

**To block/unblock countries:**

```bash
# Edit the country map
vim /etc/nginx/conf.d/geoip-blocking.conf

# Add country codes to block (1 = blocked, 0 = allowed)
# Example: CN 1;  # China

# Test and reload
nginx -t && systemctl reload nginx

# Commit the change
cd /etc/nginx && git add -A && git commit -m "Block/unblock country X"
```

**Database updates:** The GeoIP database auto-updates weekly via `geoipupdate.timer`. Manual update:

```bash
geoipupdate -v
```
