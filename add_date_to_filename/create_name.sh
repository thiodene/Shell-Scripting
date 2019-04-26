#!/bin/bash
_now=$(date +"%m_%d_%Y")
_file="/nas/backup_$_now.sql"
echo "Starting backup to $_file..."
# mysqldump -u admin -p'myPasswordHere' myDbNameHere > "$_file"
