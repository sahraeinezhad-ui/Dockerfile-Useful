#!/bin/bash

BACKUP_DIR="/backup/home"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/home_backup_$DATE.tar.gz" "$HOME"

echo "Backup created: $BACKUP_DIR/home_backup_$DATE.tar.gz"
