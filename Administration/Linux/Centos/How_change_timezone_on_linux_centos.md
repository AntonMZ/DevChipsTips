Updating information about timezones
```bash
yum install tzdata
```

Deleting old timezone file
```bash
rm -rf /etc/localtime
```

Adding new timezone file (symlink)
```bash
ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime
```

Checking current timezone
```bash
timedatectl
```

Restarting log service
```bash
/etc/init.d/rsyslog restart
```

Restarting cron service
```bash
/etc/init.d/crond restart
```

Installing & setting NTP service
```bash
yum install ntp
ntpdate pool.ntp.org
systemctl enable ntpd
systemctl start ntpd
```

Checking diff time
```bash
ntpq -p
```