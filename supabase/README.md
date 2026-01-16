# Supabase Configuration

This project uses a self-hosted Supabase instance for authentication and file storage.

## Local Development

Start Supabase locally using the CLI:
```bash
supabase start
```

Stop Supabase:
```bash
supabase stop
```

## Services

| Service | Port | Description |
|---------|------|-------------|
| API | 54321 | REST and GraphQL API |
| Database | 54322 | PostgreSQL database |
| Studio | 54323 | Web-based admin UI |
| Inbucket | 54324 | Email testing interface |
| Analytics | 54327 | Analytics backend |

## Authentication

- Email OTP verification enabled for edit suggestions
- Custom email template at `templates/magiclink.html`
- Site URL: `https://undocustudent.org`

## Storage

Storage is enabled for campus images:
- Max file size: 50MB
- Image transformation enabled
- Campus photos stored in `campuses` bucket

Images are served at:
```
{SUPABASE_URL}/storage/v1/object/public/campuses/{college_domain}/0
```

## Database

PostgreSQL 15 with:
- Row Level Security (RLS) on sensitive tables
- Prisma ORM for application queries
- Supabase client for auth operations

## Configuration

Main settings in `config.toml`:
- `project_id`: "backend"
- Database seeding enabled via `./seed.sql`
- Realtime and edge functions enabled

## Backups

Database backups stored in `backup/` directory.
