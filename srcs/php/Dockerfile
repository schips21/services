FROM alpine:latest

RUN	apk update && apk upgrade
RUN	apk add nginx openssl openssh openrc vim wget supervisor
RUN	apk add php7 php7-fpm php7-mysqli
RUN	apk add php7-zlib php7-curl php7-mbstring php7-json php7-session

COPY	/srcs/start.sh /
COPY	/srcs/default.conf /etc/nginx/conf.d/default.conf
COPY	/srcs/supervisor.conf /etc/supervisord.conf
RUN		adduser -D -g 'www' www

RUN		mkdir /var/www/schips
RUN		mkdir /run/nginx
RUN		chown -R www:www /var/lib/nginx

RUN		wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz > dev/null
RUN		tar -xzvf phpMyAdmin-5.0.2-english.tar.gz > dev/null
RUN		mv phpMyAdmin-5.0.2-english/ /var/www/schips/phpmyadmin
COPY	/srcs/config.inc.php /var/www/schips/phpmyadmin

EXPOSE 5000
ENTRYPOINT sh	start.sh