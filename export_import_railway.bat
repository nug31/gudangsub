@echo off
set MYSQL_PATH="C:\Program Files\MySQL\MySQL Server 9.3\bin"

REM === Export dari database utama ===
echo Exporting from MAIN database...
%MYSQL_PATH%\mysqldump -h nozomi.proxy.rlwy.net -P 21817 -u root -ppvOcQbzlDAobtcdozbMvCdIDDEmenwkO railway > backup.sql

REM === Import ke database cadangan ===
echo Importing to BACKUP database...
%MYSQL_PATH%\mysql -h nozomi.proxy.rlwy.net -P 11398 -u root -pErPEkWyiAPZrqPqFbmkbylAcNwgqsJgC railway --binary-mode < backup.sql

echo.
echo Selesai! Data sudah dicadangkan ke database Railway cadangan.
pause 