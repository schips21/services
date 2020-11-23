FROM alpine:latest

RUN	apk update && apk upgrade
RUN	apk add influxdb

COPY /srcs/start.sh /

EXPOSE	8086
ENTRYPOINT sh	start.sh