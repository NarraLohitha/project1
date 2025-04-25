#!/bin/bash

DATE=$(date +%F_%T)
BACKUP_DIR="/var/backups/mysql"
MYSQL_USER="root"
MYSQL_PASSWORD="*Ds7386271777"
DATABASE_NAME="cd"

mkdir -p $BACKUP_DIR

mysqldump -u $MYSQL_USER -p$MYSQL_PASSWORD $DATABASE_NAME > $BACKUP_DIR/${DATABASE_NAME}_$DATE.sql

if [ $? -eq 0 ]; then
    echo "Backup successful: ${DATABASE_NAME}_$DATE.sql"
else
    echo "Backup failed!"
    exit 1
fi
