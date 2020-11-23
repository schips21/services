FROM alpine:latest

RUN	apk update && apk upgrade
RUN	apk add mysql mysql-client openrc vim

RUN chown mysql:mysql /var/lib/mysql

COPY /srcs/my.cnf /etc/
COPY /srcs/mysql_conf.sql /etc/
COPY /srcs/wordpress.sql /etc/
COPY /srcs/start.sh /

RUN	mkdir /etc/my.cnf.

EXPOSE 3306
ENTRYPOINT sh	start.sh