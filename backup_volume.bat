@echo off
REM ---- Config ----
set VOLUME_NAME=n8n_data
set BACKUP_FILE=n8n_backup.tar

REM ---- Run backup ----
docker run --rm -v %VOLUME_NAME%:/volume -v %cd%:/backup busybox tar cvf /backup/%BACKUP_FILE% /volume

echo Backup completed: %BACKUP_FILE%
pause
