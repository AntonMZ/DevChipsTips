```mysql
MariaDB [(none)]> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.002 sec)
```

```mysql
MariaDB [(none)]> GRANT ALL ON *.* TO root@localhost IDENTIFIED BY 'password' WITH GRANT OPTION;
Query OK, 0 rows affected (0.002 sec)
```