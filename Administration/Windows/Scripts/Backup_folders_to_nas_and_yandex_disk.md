```cmd
SETLOCAL
SET PATH=%PROGRAMFILES%\7-zip;%PATH%
set now=%DATE:~-4%-%DATE:~3,2%-%DATE:~0,2%
move G:\Yandex_Disk\YandexDisk\backup_1c.zip G:\Yandex_Disk\YandexDisk\backup_1c_%now%.zip
7z a -tzip -ssw G:\Yandex_Disk\YandexDisk\backup_1c.zip D:\Bases1C -scsWIN
delete G:\Yandex_Disk\YandexDisk\backup_1c_%now%.zip
copy G:\Yandex_Disk\YandexDisk\backup_1c.zip \\192.168.1.250\backup_folder_1c\1Cv8\bkp-%now%.zip
rem 7z a -tzip -ssw \\192.168.1.250\backup_folder_1c\1Cv8\bkp-%now%.zip D:\Bases1C -scsWIN
```


### Description

|Ключ|Описание|
| -| - |
| -t |	Тип архива. По умолчанию создаются файлы в формате 7z. Примеры, -tzip, -tgz|
| -ssw |	Включить файл в архив, даже если он в данный момент используется. Для резервного копирования очень полезный ключ.|
| -mx |	Уровень компрессии. 0 - без компрессии (быстро), 9 - самая большая компрессия (медленно).|
| -p |	Пароль для архива.|