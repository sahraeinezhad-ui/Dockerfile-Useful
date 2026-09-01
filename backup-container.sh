#!/bin/bash
#for all container
BACKUP_DIR="/tmp/container-backup"
DATE=$(date +"%Y%m%d_%H%M%S")

mkdir -p "$BACKUP_DIR"

echo "=========================================="
echo "Backup started: $(date)"
echo "=========================================="

docker ps --format '{{.ID}} {{.Names}}' | while read CONTAINER_ID CONTAINER_NAME
do
    IMAGE_NAME="backup-${CONTAINER_NAME}:${DATE}"

    echo "Creating image from container: $CONTAINER_NAME"

    docker commit "$CONTAINER_ID" "$IMAGE_NAME"

    FILE_NAME="${BACKUP_DIR}/${CONTAINER_NAME}_${DATE}.tar"

    echo "Saving image to: $FILE_NAME"

    docker save "$IMAGE_NAME" -o "$FILE_NAME"

    echo "Backup completed: $CONTAINER_NAME"
done

echo "Cleaning backups older than 1 day..."

find "$BACKUP_DIR" -type f -name "*.tar" -mtime +1 -delete

echo "Backup finished: $(date)"
