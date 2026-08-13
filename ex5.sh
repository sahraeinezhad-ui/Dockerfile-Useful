#!/bin/bash

BACKUP_DIR="/var/log/passwd_backup"
DATE=$(date +%Y-%m-%d)
FILE="$BACKUP_DIR/passwd_$DATE"

mkdir -p "$BACKUP_DIR"

cut -d: -f1,3 /etc/passwd > "$FILE"

find "$BACKUP_DIR" -type f -name "passwd_*" -mtime +2 -delete

echo "Backup created: $FILE"
