eval $(minikube docker-env)
docker build -t influxdb .
kubectl apply -f influxdb.yaml