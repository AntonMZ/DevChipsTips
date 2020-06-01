SETLOCAL
SET PATH=%PROGRAMFILES%\7-zip;%PATH%
if "%time:~0,1%"==" " (set tm=0%time:~1,1%) else (set tm=%time:~0,2%)
7z -tzip u "\\192.168.1.250\backup_folder_slv\full.zip" -r -u- -up0q3x2z0!"\\192.168.1.250\backup_folder_slv\diff-%date:~6,4%.%date:~3,2%.%date:~0,2%-%tm%.%time:~3,2%.%time:~6,2%.zip" "G:\Slv\"