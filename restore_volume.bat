@echo off
REM ---- Config ----
set VOLUME_NAME=n8n_data
set BACKUP_FILE=n8n_backup.tar

REM ---- Run restore ----
docker run --rm -v %VOLUME_NAME%:/volume -v %cd%:/backup busybox tar xvf /backup/%BACKUP_FILE% -C /

echo Restore completed into volume: %VOLUME_NAME%
pause
