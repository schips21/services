openrc default ;
/etc/init.d/mariadb setup
rc-service mariadb start
mysql -u root mysql < /etc/mysql_conf.sql;

rc-service mariadb stop ;
/usr/bin/mysqld_safe ;