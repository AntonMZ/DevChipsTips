@ECHO OFF
SETLOCAL
SET PATH=%PROGRAMFILES%\7-zip;%PATH%
set now=%DATE:~-4%-%DATE:~3,2%-%DATE:~0,2%
echo %DATE%
echo %TIME%
echo Start WORK
7z a -tzip -ssw Z:\Backups\bkp-%now%.zip C:\Shares -scsWIN
echo %DATE%
echo %TIME%
pause