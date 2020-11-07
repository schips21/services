FROM alpine:latest

RUN	apk update && apk upgrade
RUN	apk add nginx openssl openssh openrc vim wget
RUN	apk add php7 php7-fpm

COPY		/srcs/start.sh /

RUN mkdir /var/www/schips

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN mv wordpress/ /var/www/schips
COPY /srcs/wp-config.php /var/www/schips/wordpress

ENTRYPOINT sh	start.sh