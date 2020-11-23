eval $(minikube docker-env)
docker build -t php .
kubectl apply -f php.yaml