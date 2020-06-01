```cmd
cd /d Z:\
move \\192.168.1.250\backup_folder_slv\full.zip \\192.168.1.250\backup_folder_slv\full_%date%.zip
SETLOCAL
SET PATH=%PROGRAMFILES%\7-zip;%PATH%
7z a -tzip -ssw "\\192.168.1.250\backup_folder_slv\full.zip" -r "G:\Slv"
```