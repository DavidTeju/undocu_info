#!/bin/bash
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
SUPABASE_DIR=$(dirname "$SCRIPT_DIR")
DATE=$(date +%Y%m%d)
BACKUP_DIR="$SUPABASE_DIR/backup/$DATE"

mkdir -p "$BACKUP_DIR"
cd "$SUPABASE_DIR"

npx supabase db dump --local -f "$BACKUP_DIR/roles.sql" --role-only
npx supabase db dump --local -f "$BACKUP_DIR/schema.sql"
npx supabase db dump --local -f "$BACKUP_DIR/data.sql" --use-copy --data-only

echo "Backup complete: $BACKUP_DIR"