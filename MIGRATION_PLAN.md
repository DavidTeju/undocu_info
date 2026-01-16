# Supabase Migration Plan: CLI to Docker Compose

**Project:** undocustudent.org
**VPS:** 82.29.152.139
**Created:** 2026-01-16
**Last Updated:** 2026-01-16
**Status:** ✅ Complete

---

## Table of Contents
1. [Prerequisites (Do These First)](#prerequisites-do-these-first)
2. [Current System Overview](#current-system-overview)
3. [Migration Steps](#migration-steps)
4. [Post-Migration Verification](#post-migration-verification)
5. [Rollback Plan](#rollback-plan)
6. [Reference Information](#reference-information)
7. [Lessons Learned](#lessons-learned)

---

## Prerequisites (Do These First)

### 1. Set Up Resend Account
1. Go to https://resend.com and create an account
2. Verify your domain `undocustudent.org`:
   - Add DNS records (TXT, CNAME) as instructed by Resend
   - Wait for verification (usually 5-10 minutes)
3. Create an API key and save it securely
4. Note your sender email (e.g., `noreply@undocustudent.org`)

### 2. Generate New JWT Secrets
Run this locally to generate secrets:
```bash
# Generate JWT secret (at least 32 characters)
openssl rand -base64 32

# Generate anon key and service role key using supabase CLI or:
# Use https://supabase.com/docs/guides/self-hosting/docker#generate-api-keys
```

**Save these values - you'll need them:**
- `JWT_SECRET`: (generated 32+ char string)
- `ANON_KEY`: (generated JWT for anon role)
- `SERVICE_ROLE_KEY`: (generated JWT for service_role)

### 3. Prepare Local Machine
Ensure you have disk space for:
- Database backup: ~1MB (compressed)
- Storage images: ~820MB

---

## Current System Overview

### Architecture
```
                    ┌─────────────────────────────────────────┐
                    │              VPS (82.29.152.139)        │
                    │                                         │
Internet ──────────►│  nginx (ports 80/443)                   │
                    │    ├── undocustudent.org → :4173        │
                    │    └── files.undocustudent.org → :54321 │
                    │                                         │
                    │  ┌─────────────────────────────────────┐│
                    │  │ undocu_app container (:4173)        ││
                    │  │   - SvelteKit + Prisma              ││
                    │  │   - Connects to DB on :54322        ││
                    │  │   - Connects to Supabase on :54321  ││
                    │  └─────────────────────────────────────┘│
                    │                                         │
                    │  ┌─────────────────────────────────────┐│
                    │  │ Supabase CLI Containers             ││
                    │  │   - supabase_db_backend (:54322)    ││
                    │  │   - supabase_kong_backend (:54321)  ││
                    │  │   - supabase_auth_backend           ││
                    │  │   - supabase_storage_backend        ││
                    │  │   - supabase_studio_backend (:54323)││
                    │  │   - + 8 more services               ││
                    │  └─────────────────────────────────────┘│
                    └─────────────────────────────────────────┘
```

### Data Inventory
| Item | Size | Location |
|------|------|----------|
| PostgreSQL Database | ~15MB | Docker volume `supabase_db_backend` |
| Storage Images | ~820MB | Docker volume `supabase_storage_backend` |
| Users | 7 | `auth.users` table |
| Colleges | Multiple | `public.colleges` table |
| Storage Bucket | 1 | `campuses` (public) |

### Database Tables
- `public.colleges` - College information
- `public.responses` - Question responses per college
- `public.questions` - Question definitions
- `public.emailaddresses` - Email addresses linked to colleges
- `public.Suggestions` - User-submitted edit suggestions

### Current Environment Variables (VPS: /root/undocu_info/app/.env)
```env
DATABASE_URL="postgresql://postgres:postgres@0.0.0.0:54322/postgres"
ANON_KEY="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0"
SERVICE_ROLE_KEY="sb_secret_N7UND0UgjKTVK-Uodkm0Hg_xSvEMPvz"
PUBLIC_FILES_ROOT="https://files.undocustudent.org"
PUBLIC_SUPABASE_URL="http://0.0.0.0:54321"
PUBLIC_SUPABASE_ANON_KEY="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0"
SUPABASE_URL="http://0.0.0.0:54321"
SUPABASE_ANON_KEY="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0"
ENVIRONMENT="development"
ADMIN_EMAILS="tejuoshodavid@gmail.com"
```

### Current Supabase Config (config.toml)
Key settings:
- `project_id = "backend"`
- `site_url = "https://undocustudent.org"`
- `jwt_expiry = 3600`
- `otp_length = 6`
- `otp_expiry = 3600`
- Email templates configured but NOT working (see [Lessons Learned](#lessons-learned))

### Quirks & Known Issues
1. **Demo JWT secrets** - Currently using Supabase demo keys (insecure)
2. **No SMTP configured** - Emails go to Inbucket, not real delivery
3. **Email templates broken** - Multiple issues prevent custom templates from working (see [Lessons Learned](#lessons-learned))
4. **No RLS policies** - Tables have no row-level security
5. **Storage bucket manually created** - `campuses` bucket not in config
6. **App on separate network** - `undocu_app` not on `supabase_network_backend`
7. **Prisma is source of truth** - No Supabase migrations folder

### Existing Scripts
- `/root/undocu_info/supabase/scripts/backup.sh` - Database backup
- `/root/undocu_info/supabase/scripts/supabase_utils.py` - Has `download_all_campus_images()` and `upload_all_campus_images()` functions

---

## Migration Steps

### Phase 1: Backup Everything

#### Step 1.1: Database Backup
```bash
ssh root@82.29.152.139
cd /root/undocu_info/supabase/scripts
chmod +x backup.sh
./backup.sh
```

Verify backup:
```bash
ls -la /root/undocu_info/supabase/backup/$(date +%Y%m%d)/
```

#### Step 1.2: Storage Backup (Images)
Option A - Using Python script:
```bash
cd /root/undocu_info/supabase/scripts
source .venv/bin/activate
python3 -c "
from supabase_utils import create_supabase_client, download_all_campus_images
supabase = create_supabase_client()
download_all_campus_images(supabase, '/root/undocu_info/storage_backup/')
"
```

Option B - Using tar (faster):
```bash
tar -czvf /root/undocu_info/storage_backup.tar.gz -C /var/lib/docker/volumes/supabase_storage_backend/_data .
```
> **Note:** The `-C` flag changes to the directory first, so the archive contains relative paths starting from `stub/` rather than the full `/var/lib/docker/...` path.

#### Step 1.3: Download Backups to Local Machine
From your local machine:
```bash
mkdir -p ~/undocu_backups/$(date +%Y%m%d)
scp -r root@82.29.152.139:/root/undocu_info/supabase/backup/$(date +%Y%m%d)/* ~/undocu_backups/$(date +%Y%m%d)/
scp root@82.29.152.139:/root/undocu_info/storage_backup.tar.gz ~/undocu_backups/
```

---

### Phase 2: Set Up Docker Compose Supabase

#### Step 2.1: Clone Official Setup
```bash
ssh root@82.29.152.139
cd /root
git clone --depth 1 https://github.com/supabase/supabase
mkdir -p /root/supabase-docker
cp -rf supabase/docker/* /root/supabase-docker/
cp supabase/docker/.env.example /root/supabase-docker/.env
rm -rf supabase  # Clean up clone
cd /root/supabase-docker
```

#### Step 2.2: Configure Environment Variables
Edit `/root/supabase-docker/.env`:

```env
############
# Secrets - GENERATE NEW VALUES FOR THESE
############
POSTGRES_PASSWORD=<generate-strong-password>
JWT_SECRET=<your-generated-jwt-secret>
ANON_KEY=<your-generated-anon-key>
SERVICE_ROLE_KEY=<your-generated-service-role-key>
DASHBOARD_USERNAME=admin
DASHBOARD_PASSWORD=<generate-strong-password>

############
# Database
############
POSTGRES_HOST=db
POSTGRES_DB=postgres
POSTGRES_PORT=5432

############
# API
############
SITE_URL=https://undocustudent.org
ADDITIONAL_REDIRECT_URLS=
API_EXTERNAL_URL=https://files.undocustudent.org

############
# Auth / Email
############
ENABLE_EMAIL_SIGNUP=true
ENABLE_EMAIL_AUTOCONFIRM=false
SMTP_ADMIN_EMAIL=noreply@undocustudent.org
SMTP_HOST=smtp.resend.com
SMTP_PORT=465
SMTP_USER=resend
SMTP_PASS=<your-resend-api-key>
SMTP_SENDER_NAME=UndocuStudent

############
# Email Templates (served by nginx)
############
GOTRUE_MAILER_TEMPLATES_MAGIC_LINK=https://undocustudent.org/email-templates/magiclink.html
GOTRUE_MAILER_TEMPLATES_RECOVERY=https://undocustudent.org/email-templates/magiclink.html
GOTRUE_MAILER_TEMPLATES_INVITE=https://undocustudent.org/email-templates/magiclink.html
GOTRUE_MAILER_TEMPLATES_CONFIRMATION=https://undocustudent.org/email-templates/magiclink.html

############
# Studio
############
STUDIO_DEFAULT_ORGANIZATION=UndocuStudent
STUDIO_DEFAULT_PROJECT=undocustudent

############
# Other secrets (generate these)
# Or use: sh ./utils/generate-keys.sh
############
SECRET_KEY_BASE=<generate-64-char-string-minimum>
VAULT_ENC_KEY=<exactly-32-characters>
PG_META_CRYPTO_KEY=<generate-32-char-string>

############
# Keep defaults for these (from .env.example)
############
# POOLER_TENANT_ID, LOGFLARE_* tokens, etc. - review .env.example
```

#### Step 2.3: Note the Default Docker Network

> **No changes needed to docker-compose.yml for networking.**

Docker Compose creates a network based on the project name. For the official Supabase Docker setup, this is `supabase_default` (defined in docker-compose.yml).

Later, we'll attach the app container to this network so it can communicate with Supabase services via internal DNS names (`db`, `kong`, etc.).

Verify the network exists after starting Supabase:
```bash
docker network ls | grep supabase
# Should show: supabase_default
```

#### Step 2.4: Add Email Template Variables to docker-compose.yml

> **IMPORTANT:** Docker Compose's `.env` file is only used for variable substitution (`${VAR}`) in docker-compose.yml. Variables must be explicitly listed in a service's `environment:` section to be passed to that container. The official docker-compose.yml does NOT include email template variables.

Edit `/root/supabase-docker/docker-compose.yml`, find the `auth` service and add these to its `environment:` section:

```yaml
auth:
  # ... existing config ...
  environment:
    # ... existing variables like GOTRUE_DB_DATABASE_URL, GOTRUE_JWT_SECRET, etc ...

    # Add these lines for custom email templates:
    GOTRUE_MAILER_TEMPLATES_MAGIC_LINK: ${GOTRUE_MAILER_TEMPLATES_MAGIC_LINK}
    GOTRUE_MAILER_TEMPLATES_RECOVERY: ${GOTRUE_MAILER_TEMPLATES_RECOVERY}
    GOTRUE_MAILER_TEMPLATES_INVITE: ${GOTRUE_MAILER_TEMPLATES_INVITE}
    GOTRUE_MAILER_TEMPLATES_CONFIRMATION: ${GOTRUE_MAILER_TEMPLATES_CONFIRMATION}
```

The `${...}` values will be read from your `.env` file (where you defined them in Step 2.2).

#### Step 2.5: Verify nginx Email Templates Setup

> **NOTE:** This was already configured during debugging. Verify it's still in place.

The email templates location was already added to nginx at `/etc/nginx/sites-available/undocustudent`:
```nginx
# Inside the undocustudent.org SSL server block
location /email-templates/ {
    alias /var/www/email-templates/;
    default_type text/html;
}
```

Templates were copied to `/var/www/email-templates/`. Verify:
```bash
curl https://undocustudent.org/email-templates/magiclink.html | head -5
# Should show your custom HTML template
```

If not working, run:
```bash
mkdir -p /var/www/email-templates
cp /root/undocu_info/supabase/templates/* /var/www/email-templates/
chown -R www-data:www-data /var/www/email-templates
nginx -t && systemctl reload nginx
```

#### Step 2.6: Set Up Studio Subdomain

Add a new server block for `studio.undocustudent.org` in `/etc/nginx/sites-available/undocustudent`:
```nginx
server {
    server_name studio.undocustudent.org;

    # Basic auth for Studio access
    auth_basic "Supabase Studio";
    auth_basic_user_file /etc/nginx/.htpasswd_studio;

    location / {
        proxy_pass http://localhost:3000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";
    }

    listen 443 ssl;
    ssl_certificate /etc/letsencrypt/live/undocustudent.org/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/undocustudent.org/privkey.pem;
    include /etc/letsencrypt/options-ssl-nginx.conf;
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem;
}

server {
    if ($host = studio.undocustudent.org) {
        return 301 https://$host$request_uri;
    }
    listen 80;
    server_name studio.undocustudent.org;
    return 404;
}
```

> **Note:** Studio runs on port 3000 in Docker Compose (not through Kong).

Create htpasswd file and get SSL cert:
```bash
# Create password file
apt-get install apache2-utils -y
htpasswd -c /etc/nginx/.htpasswd_studio admin
# Enter a strong password when prompted

# Add DNS record for studio.undocustudent.org pointing to VPS IP first, then:
certbot --nginx -d studio.undocustudent.org

nginx -t && systemctl reload nginx
```

Studio URL will be: `https://studio.undocustudent.org`

---

### Phase 3: Migration Execution

#### Step 3.1: Stop Old Supabase (CLI)
```bash
cd /root/undocu_info
npx supabase stop
```

#### Step 3.2: Prepare Storage Volume Directory
```bash
# Create the storage volume directory
mkdir -p /root/supabase-docker/volumes/storage

# Extract storage backup (if using tar method)
tar -xzvf /root/undocu_info/storage_backup.tar.gz -C /root/supabase-docker/volumes/storage
```

#### Step 3.3: Start New Supabase (Docker Compose)
```bash
cd /root/supabase-docker
docker compose pull
docker compose up -d
```

Wait for healthy status:
```bash
docker compose ps
# All services should show "healthy" within 1-2 minutes
```

#### Step 3.4: Restore Database

> **IMPORTANT:** Use the pipe method below. The `docker-entrypoint-initdb.d` method only works on first initialization of an empty database.

```bash
# Restore in order: roles, schema, data
cat /root/undocu_info/supabase/backup/YYYYMMDD/roles.sql | docker compose exec -T db psql -U postgres
cat /root/undocu_info/supabase/backup/YYYYMMDD/schema.sql | docker compose exec -T db psql -U postgres
cat /root/undocu_info/supabase/backup/YYYYMMDD/data.sql | docker compose exec -T db psql -U postgres
```

Replace `YYYYMMDD` with actual backup date.

#### Step 3.5: Recreate Storage Bucket

Via SQL:
```bash
docker compose exec -T db psql -U postgres -c "
INSERT INTO storage.buckets (id, name, public)
VALUES ('campuses', 'campuses', true)
ON CONFLICT (id) DO NOTHING;
"
```

#### Step 3.6: Restore Storage Images (if using Python method)

If you used the Python script for backup instead of tar:
```bash
cd /root/undocu_info/supabase/scripts
source .venv/bin/activate

# First update supabase_utils.py to use new URL and keys
# Then run:
python3 -c "
from supabase_utils import create_supabase_client, upload_all_campus_images
supabase = create_supabase_client(
    url='http://localhost:8000',
    key='<your-new-service-role-key>'
)
upload_all_campus_images(supabase, '/root/undocu_info/storage_backup/')
"
```

#### Step 3.7: Update App Environment

Edit `/root/undocu_info/app/.env`:
```env
# Use Docker internal DNS names since app will be on supabase_net
DATABASE_URL="postgresql://postgres:<new-postgres-password>@db:5432/postgres"
ANON_KEY="<new-anon-key>"
SERVICE_ROLE_KEY="<new-service-role-key>"
PUBLIC_FILES_ROOT="https://files.undocustudent.org"
PUBLIC_SUPABASE_URL="https://files.undocustudent.org"
PUBLIC_SUPABASE_ANON_KEY="<new-anon-key>"
SUPABASE_URL="http://kong:8000"
SUPABASE_ANON_KEY="<new-anon-key>"
ENVIRONMENT="production"
ADMIN_EMAILS="tejuoshodavid@gmail.com"
```

> **Note:** Server-side URLs use Docker internal names (`db`, `kong`). Client-side PUBLIC_ URLs use the external domain.

#### Step 3.8: Update nginx for new ports

Edit `/etc/nginx/sites-available/undocustudent`:
```nginx
# Change files.undocustudent.org proxy_pass from:
proxy_pass http://localhost:54321;
# To:
proxy_pass http://localhost:8000;
```

Reload nginx:
```bash
nginx -t && systemctl reload nginx
```

#### Step 3.9: Rebuild and Restart App

> **IMPORTANT:** The app must be on the `supabase_net` network to use Docker internal DNS names.

```bash
cd /root/undocu_info/app
docker build -t undocu_app .
docker stop undocu_app && docker rm undocu_app

# Run on the Supabase Docker Compose default network
docker run -d \
  --name undocu_app \
  --network supabase_default \
  --env-file .env \
  -p 4173:4173 \
  --restart unless-stopped \
  undocu_app
```

---

### Phase 4: Set Up Automated Backups

#### Step 4.1: Create Backup Script

Create `/root/supabase-docker/backup.sh`:
```bash
#!/bin/bash
BACKUP_DIR="/root/supabase-backups"
DATE=$(date +%Y%m%d_%H%M%S)
mkdir -p "$BACKUP_DIR"

# Database backup
docker compose -f /root/supabase-docker/docker-compose.yml exec -T db pg_dump -U postgres | gzip > "$BACKUP_DIR/db_$DATE.sql.gz"

# Storage backup
tar -czf "$BACKUP_DIR/storage_$DATE.tar.gz" -C /root/supabase-docker/volumes/storage .

# Keep only last 7 days
find "$BACKUP_DIR" -name "*.sql.gz" -mtime +7 -delete
find "$BACKUP_DIR" -name "*.tar.gz" -mtime +7 -delete

echo "Backup complete: db_$DATE.sql.gz, storage_$DATE.tar.gz"
```

```bash
chmod +x /root/supabase-docker/backup.sh
```

#### Step 4.2: Add Cron Job
```bash
crontab -e
```

Add:
```
# Daily backup at 3 AM
0 3 * * * /root/supabase-docker/backup.sh >> /var/log/supabase-backup.log 2>&1
```

---

## Post-Migration Verification

### Checklist
- [x] Website loads at https://undocustudent.org
- [x] College pages display with images
- [x] Edit page loads and can request OTP
- [x] OTP email received with **custom template** (not default)
- [x] OTP verification works
- [x] Admin login works at /admin/login
- [x] Admin dashboard loads
- [x] Suggestions appear in admin dashboard
- [x] Studio accessible at https://studio.undocustudent.org (protected with basic auth)
- [x] Backup cron job runs successfully

### Test Commands
```bash
# Check all containers healthy
cd /root/supabase-docker && docker compose ps

# Check logs for errors
docker compose logs auth | grep -i error
docker compose logs db | grep -i error

# Test database connection
docker compose exec db psql -U postgres -c "SELECT count(*) FROM public.colleges;"

# Test storage
curl https://files.undocustudent.org/storage/v1/object/public/campuses/jmu/0

# Test email templates are accessible
curl https://undocustudent.org/email-templates/magiclink.html | head -5

# Verify app is on correct network
docker network inspect supabase_default | grep undocu_app
```

---

## Rollback Plan

If migration fails:

### Step 1: Stop Docker Compose Supabase
```bash
cd /root/supabase-docker
docker compose down
```

### Step 2: Restart CLI Supabase
```bash
cd /root/undocu_info
npx supabase start
```

### Step 3: Revert App .env
Restore original environment variables:
```env
DATABASE_URL="postgresql://postgres:postgres@0.0.0.0:54322/postgres"
SUPABASE_URL="http://0.0.0.0:54321"
# ... etc (see Current Environment Variables section above)
```

### Step 4: Revert nginx
Change `proxy_pass` back to `localhost:54321`.

### Step 5: Restart App (on default network)
```bash
docker stop undocu_app && docker rm undocu_app
docker run -d --name undocu_app --env-file /root/undocu_info/app/.env -p 4173:4173 --restart unless-stopped undocu_app
```

---

## Reference Information

### Port Mapping
| Service | CLI Ports | Docker Compose Ports |
|---------|-----------|---------------------|
| Kong (API) | 54321 | 8000 |
| PostgreSQL | 54322 | 5432 |
| Studio | 54323 | 3000 (internal, via Kong) |
| Inbucket | 54324 | N/A (use real SMTP) |

### File Locations (After Migration)
| Item | Location |
|------|----------|
| Docker Compose config | `/root/supabase-docker/` |
| Supabase environment | `/root/supabase-docker/.env` |
| Storage volume | `/root/supabase-docker/volumes/storage/` |
| App code | `/root/undocu_info/app/` |
| App .env | `/root/undocu_info/app/.env` |
| Email templates | `/var/www/email-templates/` |
| Database backups | `/root/supabase-backups/` |
| nginx config | `/etc/nginx/sites-available/undocustudent` |

### Key URLs
- Main site: https://undocustudent.org
- API/Storage: https://files.undocustudent.org
- Studio: https://studio.undocustudent.org
- Email templates: https://undocustudent.org/email-templates/

### Docker Internal DNS Names (for app .env)
When the app is on `supabase_default`, use these names:
- Database: `db:5432`
- Kong API: `kong:8000`
- Auth: `auth:9999`
- Storage: `storage:5000`

### Useful Commands
```bash
# View Supabase logs
cd /root/supabase-docker && docker compose logs -f

# Restart Supabase
cd /root/supabase-docker && docker compose restart

# Restart specific service
docker compose restart auth

# Check disk usage
df -h
docker system df

# Manual backup
/root/supabase-docker/backup.sh

# Check app network connectivity
docker exec undocu_app ping -c 1 db
docker exec undocu_app ping -c 1 kong
```

### Resend SMTP Settings
- Host: `smtp.resend.com`
- Port: `465` (SSL) or `587` (TLS)
- Username: `resend`
- Password: Your API key

### Generate Secrets Commands
```bash
# JWT Secret (32+ chars)
openssl rand -base64 32

# 64-char string for SECRET_KEY_BASE
openssl rand -hex 32

# 32-char string for VAULT_ENC_KEY
openssl rand -hex 16

# Strong password
openssl rand -base64 24
```

---

## Lessons Learned

### Email Template Issues (CLI Mode)

During debugging, we discovered multiple issues preventing custom email templates from working with Supabase CLI:

1. **Race Condition on Startup**
   - GoTrue tries to fetch templates from Kong before Kong is fully ready
   - Error: `dial tcp 172.18.0.5:8088: connect: connection refused`
   - Even after restart, templates may not reload properly

2. **Template Files ARE Bind-Mounted**
   - The CLI does correctly mount `/root/undocu_info/supabase/templates/magiclink.html` into Kong at `/home/kong/templates/email/magiclink.html`
   - Kong has nginx configured to serve `/email/*` from this directory on port 8088

3. **Templates Load but Don't Apply**
   - GoTrue logs show `"mailer: reloaded template type: magic_link"` (success)
   - But actual emails still use the default template
   - This suggests a caching bug or silent failure in GoTrue's template rendering

4. **Inbucket vs Real SMTP**
   - CLI mode uses Inbucket (local email testing), not real email delivery
   - Even if templates worked, emails only go to Inbucket, not real addresses

5. **Why Docker Compose Fixes This**
   - External HTTPS URLs for templates (not internal Kong URLs)
   - Real SMTP delivery (Resend) instead of Inbucket
   - Proper service startup order with health checks
   - More control over environment variables

### nginx Permissions
- nginx runs as `www-data` user
- Cannot access files in `/root/` directory
- Templates must be in a web-accessible location like `/var/www/email-templates/`

### Docker Networking
- Containers on different Docker networks cannot communicate
- The app container MUST be on the same network as Supabase (`supabase_default`)
- Docker Compose creates network based on the `name` in docker-compose.yml (the official Supabase compose uses `supabase_default`)
- Use Docker internal DNS names (`db`, `kong`) only when on the same network
- Use `0.0.0.0` or external URLs when accessing from outside the network

### imgproxy Resolution Limit
- High-resolution images (20MP+) fail with "Source image resolution is too big"
- Fix: Add `IMGPROXY_MAX_SRC_RESOLUTION: 50` to imgproxy environment in docker-compose.yml
- Must recreate container (not just restart) for env var changes: `docker compose up -d imgproxy`

### Storage Migration
- xattrs don't survive tar transfers between systems
- Results in "ENODATA - The extended attribute does not exist" errors
- Solution: Re-upload images via Supabase API instead of tar restore

### Local Development Connection
- External connections to Supabase must use Supavisor pooler (port 6543)
- Username format: `postgres.[TENANT_ID]` (e.g., `postgres.undocustudent`)
- Direct port 5432 connection from outside Docker won't work with standard username

---

## Notes

- **Prisma is source of truth** for database schema, not Supabase migrations
- **No RLS policies** are configured on public tables
- The `campuses` storage bucket must be manually created after migration
- App connects to PostgreSQL directly (not through Supabase API) for reads
- App uses Supabase Auth for OTP and admin login only
- Storage bucket is public (no auth needed for image access)