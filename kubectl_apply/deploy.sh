#!/bin/bash

kubectl apply -f ../spdj-mysql/storageclass.yaml
kubectl apply -f ../spdj-mysql/pv.yaml
kubectl apply -f ../spdj-mysql/pvc.yaml
kubectl apply -f ../spdj-mysql/deployment.yaml
kubectl apply -f ../spdj-mysql/service.yaml
sleep 10 
mysql_pod_name=$(kubectl get pods --no-headers -o custom-columns=":metadata.name")
kubectl exec -it ${mysql_pod_name} -- mysql -uroot -pchoi0god! < spdj-mysql.sql

kubectl apply -f ../spdj-app/storageclass.yaml
kubectl apply -f ../spdj-app/pv.yaml
kubectl apply -f ../spdj-app/pvc.yaml
kubectl apply -f ../spdj-app/deployment.yaml
kubectl apply -f ../spdj-app/service.yaml
kubectl apply -f ../nginx-ingress/ingress.yaml
kubectl apply -f ../nginx-ingress/deploy.yaml
