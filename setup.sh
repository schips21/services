minikube delete

minikube start
minikube addons enable metallb
cd srcs
kubectl apply -f metallb-config.yaml
cd mysql
sh start_script.sh
cd ../nginx
sh start_script.sh
cd ../php
sh start_script.sh
cd ../wordpress
sh start_script.sh
cd ../ftps
sh start_script.sh
cd ../influxdb
sh start_script.sh
cd ../telegraf
sh start_script.sh
cd ../grafana
sh start_script.sh
minikube dashboard