FROM alpine

RUN		apk update && apk upgrade
RUN		apk add vim wget

RUN		wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.1_static_linux_amd64.tar.gz
RUN		tar -xzvf telegraf-1.16.1_static_linux_amd64.tar.gz
RUN		cp -r /telegraf-1.16.1/* /

ENTRYPOINT ["telegraf"]
