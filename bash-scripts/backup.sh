timestamp=$( date +%Y%m%d_%H%M%S )
backup_dir="$HOME/log_backups"
backup_file="log_backup_$timestamp.tar.gz"
mkdir -p "$backup_dir"
tar -czf "$backup_dir/$backup_file" /var/log/*.log 2>/dev/null
if [ $? -eq 0 ]; then
   echo "Backup created successfully"
    echo "backup file created at: $backup_dir/$backup_file"
else
    echo "Backup failed.please check permissions or path files"
fi
