Смотрим в каком пакете она содержится:

```bash
yum whatprovides netstat
```

Вывод:

```bash
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * atomic: www4.atomicorp.com
 * base: 195.93.153.37
 * epel: del-mirrors.extreme-ix.org
net-tools-2.0-0.22.20131004git.el7.x86_64 : Basic networking tools
Repo        : @base
Matched from:
Filename    : /usr/bin/netstat
```

Из вывода видно, что эту netstat содержит набор инструментов net-tools, устанавливаем net-tools

``bash
yum install net-tools
```

Проверяем:

``bash
netstat
```