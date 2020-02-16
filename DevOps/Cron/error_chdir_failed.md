

```bash
Nov  8 06:00:01 localhost CROND[21023]: (CRON) ERROR chdir failed (/usr/share/httpd): No such file or directory
```

Вариант первый: 
Создать папку 
```bash
[root@localhost ~]# mkdir /usr/share/httpd
```

либо указываем в самом начале crontab домашнюю папку

```bash
crontab -eu apache
HOME=/tmp
```