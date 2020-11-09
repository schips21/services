FROM alpine:latest

RUN	apk update && apk upgrade
RUN	apk add nginx openssl openssh openrc vim wget
RUN	apk add php7 php7-fpm

COPY	/srcs/start.sh /
COPY	/srcs/default /etc/nginx/conf.d/default.conf
COPY	/srcs/supervisor.conf /etc/supervisord.conf

RUN		mkdir /var/www/schips

RUN		wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz
RUN		tar -xzvf phpMyAdmin-5.0.2-english.tar.gz
RUN		mv phpMyAdmin-5.0.2-english/ /var/www/schips/phpmyadmin
COPY	/srcs/config.inc.php /var/www/schips/phpmyadmin

EXPOSE 5000
ENTRYPOINT sh	start.sh