FROM alpine:latest

RUN	apk update && apk upgrade
RUN	apk add nginx openssl openssh openrc openssh supervisor

COPY		/srcs/start.sh /
COPY		/srcs/default /etc/nginx/conf.d/default.conf
COPY		/srcs/supervisor.conf /etc/supervisord.conf

RUN mkdir /var/www/schips
RUN mkdir -p /run/nginx/

#ssl
RUN openssl req \
		-newkey rsa:2048 -nodes -keyout local_host.key \
		-x509 -days 365 -out local_host.crt \
		-subj "/C=RU/ST=Moscow/L=21/O=21/OU=schips/CN=localhost"
RUN chmod +x /start.sh
EXPOSE 80 443
ENTRYPOINT sh	start.sh