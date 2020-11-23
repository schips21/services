FROM alpine:latest

RUN	apk update && apk upgrade
RUN	apk add openssl openrc vsftpd

RUN printf "schips\nschips\n" | adduser schips -s /bin/false -h /schips
RUN	chown schips:schips /schips
COPY /srcs/start.sh /
COPY /srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf


RUN openssl req \
		-newkey rsa:2048 -nodes -keyout /etc/vsftpd.key \
		-x509 -days 365 -out /etc/vsftpd.crt \
		-subj "/C=RU/ST=Moscow/L=21/O=21/OU=schips/CN=localhost"

EXPOSE	20 21 2000
ENTRYPOINT sh	start.sh