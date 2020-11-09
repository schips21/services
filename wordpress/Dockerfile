FROM alpine:latest

RUN	apk update && apk upgrade
RUN	apk add nginx openssl openssh openrc vim wget supervisor
RUN	apk add php7 php7-fpm

COPY	/srcs/start.sh /
# COPY	/srcs/default.conf /etc/nginx/conf.d/default.conf
COPY	/srcs/default.conf /etc/nginx/nginx.conf
COPY	/srcs/supervisor.conf /etc/supervisord.conf
RUN adduser -D -g 'www' www
RUN mkdir /var/www/schips
RUN mkdir /run/nginx

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN mv wordpress/ /var/www/schips
COPY /srcs/wp-config.php /var/www/schips/wordpress

EXPOSE 5050
ENTRYPOINT sh	start.sh