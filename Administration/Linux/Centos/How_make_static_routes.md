Add a temporary static route

```bash
ip route add 172.16.5.0/24 via 10.0.0.101 dev eth0
```
Add a permanent static route

**vi /etc/sysconfig/network-scripts/route-eth0**

```bash
172.16.5.0/24 via 10.0.0.101 dev eth0
```
