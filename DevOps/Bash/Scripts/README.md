Сервисы для получения внешнего IP адреса:
# curl eth0.me
# curl ipinfo.io/ip
# curl ipecho.net/plain
# curl icanhazip.com
# curl ipecho.net
# curl ident.me
# curl myip.gelma.net


Блокировка ICMP пакетов на Linux системах
Временная блокировка:
Включение блокировки:
echo "1" > /proc/sys/net/ipv4/icmp_echo_ignore_all
Отключение блокировки:
echo "0" > /proc/sys/net/ipv4/icmp_echo_ignore_all

Постоянная блокировка:
 /etc/sysctl.conf
net.ipv4.icmp_echo_ignore_all = 1
sysctl -p
