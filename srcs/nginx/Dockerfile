FROM alpine:latest

RUN	apk update && apk upgrade
RUN	apk add nginx openssl openssh openrc openssh supervisor

RUN adduser -D -g 'www' www
RUN echo -e "schips\nschips\n" | adduser schips

COPY		/srcs/start.sh /
COPY		/srcs/default.conf /etc/nginx/nginx.conf
COPY		/srcs/supervisor.conf /etc/supervisord.conf

RUN mkdir /var/www/schips
RUN mkdir -p /run/nginx/

RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /var/www/schips
RUN echo "NGINX is started!" > index.html
RUN mv index.html /var/www/schips

RUN openssl req \
		-newkey rsa:2048 -nodes -keyout /etc/ssl/certs/nginx.key \
		-x509 -days 365 -out /etc/ssl/certs/nginx.crt \
		-subj "/C=RU/ST=Moscow/L=21/O=21/OU=schips/CN=localhost"



EXPOSE 80 443 22
ENTRYPOINT sh	start.sh