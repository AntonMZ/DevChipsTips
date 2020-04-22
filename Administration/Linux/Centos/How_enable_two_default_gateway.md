```bash
[root@localhost sbin]# cat /etc/sysconfig/network-scripts/ifcfg-ens192
TYPE=Ethernet
#PROXY_METHOD=none
#BROWSER_ONLY=no
BOOTPROTO=static
#DEFROUTE=yes
#IPV4_FAILURE_FATAL=no
#IPV6INIT=yes
#IPV6_AUTOCONF=yes
#IPV6_DEFROUTE=yes
#IPV6_FAILURE_FATAL=no
#IPV6_ADDR_GEN_MODE=stable-privacy
NAME=ens192
UUID=abc8dac0-c6dd-4831-be01-a8d79125681f
DEVICE=ens192
ONBOOT=yes
IPADDR=195.xxx.xxx.222
NETMASK=255.255.255.240
GATEWAY=195.xxx.xxx.1
```

```bash
[root@localhost sbin]# cat /etc/sysconfig/network-scripts/ifcfg-ens224
TYPE=Ethernet
#PROXY_METHOD=none
#BROWSER_ONLY=no
BOOTPROTO=static
#DEFROUTE=yes
#IPV4_FAILURE_FATAL=no
#IPV6INIT=yes
#IPV6_AUTOCONF=yes
#IPV6_DEFROUTE=yes
#IPV6_FAILURE_FATAL=no
#IPV6_ADDR_GEN_MODE=stable-privacy
NAME=ens224
#UUID=abc8dac0-c6dd-4831-be01-a8d79125681f
DEVICE=ens224
ONBOOT=yes
IPADDR=192.168.1.167
NETMASK=255.255.255.0
GATEWAY=192.168.1.1
```

```bash
[root@localhost sbin]# cat /sbin/ifup-local
#!/bin/bash
ip rule add from 195.xxx.xxx.222 table t1
ip route add default via 195.xxx.xxx.1 dev ens192 table t1

ip rule add from 192.168.1.167 table t2
ip route add default via 192.168.1.1 dev ens224 table t2
ip route add 192.168.0.20/32 via 192.168.1.1
```

```bash
[root@localhost sbin]# cat /sbin/ifdown-local
#!/bin/bash
ip rule del from 195.xxx.xxx.222 table t1
ip route del default via 195.xxx.xxx.1 dev ens192 table t1

ip rule del from 192.168.1.167 table t2
ip route del default via 192.168.1.1 dev ens224 table t2
ip route del 192.168.0.20/32 via 192.168.1.1
```

```bash
[root@localhost sbin]# ls -lah /sbin/ | grep if
-rwxr-xr-x.  1 root root      20K Aug  4  2017 clockdiff
-rwxr-xr-x.  1 root root     3.0K Apr 24  2019 ifcfg
-rwxr-xr-x.  1 root root     1.7K Aug 24  2018 ifdown
-rwxr-xr-x   1 root root      255 Apr 21 19:56 ifdown-local
-rwxr-xr-x.  1 root root      20K Aug  4  2017 ifenslave
-rwxr-xr-x.  1 root root      41K Apr 24  2019 ifstat
-rwxr-xr-x.  1 root root     4.9K Aug 24  2018 ifup
-rwxr-xr-x   1 root root      255 Apr 21 19:56 ifup-local
```

```bash
[root@localhost sysconfig]# cat /etc/iproute2/rt_tables
#
# reserved values
#
255	local
254	main
253	default
0	unspec
#
# local
#
#1	inr.ruhep
101 t1
102 t2
```
