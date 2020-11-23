FROM alpine:latest

RUN apk update
RUN apk add wget vim
RUN apk add --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main libc6-compat

ADD https://dl.grafana.com/oss/release/grafana-7.2.2.linux-amd64.tar.gz ./
RUN tar -xzvf grafana-7.2.2.linux-amd64.tar.gz --strip-components 1 > dev/null

ADD start.sh ./
COPY custom.ini conf/
COPY dashboard.yaml conf/provisioning/dashboards/
COPY datasources.yaml conf/provisioning/datasources/
COPY /dashboards/*.json conf/provisioning/dashboards/json/

EXPOSE 3000
ENTRYPOINT sh	start.sh