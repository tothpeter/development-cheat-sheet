# MySQL dump
## Making a Database Backup
mysqldump -u my_app_usr -p my_app | gzip > db_backup.sql.gz

## Restoring from a Database Backup
gunzip < db_backup.sql.gz | mysql -u my_app_usr -p my_app