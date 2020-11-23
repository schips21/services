FROM alpine:latest

RUN	apk update && apk upgrade
RUN	apk add nginx openssl openssh openrc vim wget supervisor
RUN	apk add php7 php7-fpm php7-mysqli
RUN	apk add php7-zlib php7-curl php7-mbstring php7-json php7-session

COPY	/srcs/start.sh /
COPY	/srcs/default.conf /etc/nginx/conf.d/default.conf
COPY	/srcs/supervisor.conf /etc/supervisord.conf
RUN adduser -D -g 'www' www
RUN mkdir /var/www/schips
RUN mkdir /run/nginx

RUN		wget https://wordpress.org/latest.tar.gz
RUN		tar -xzvf latest.tar.gz > dev/null
RUN		mv wordpress/ /var/www/schips
COPY	/srcs/wp-config.php /var/www/schips/wordpress
RUN		chown -R www:www /var/www/schips
RUN		chown -R www:www /var/lib/nginx

EXPOSE 5050
ENTRYPOINT sh	start.sh