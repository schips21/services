eval $(minikube docker-env)
docker build -t telegraf .
kubectl apply -f telegraf.yaml