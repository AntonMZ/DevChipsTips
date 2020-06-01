```cmd
forfiles.exe /p Z:\Backups\ /s /m *.* /d -5 /c "cmd /c del /q /f @file"
```