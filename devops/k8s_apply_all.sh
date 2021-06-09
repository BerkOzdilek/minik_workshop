#!/usr/bin/env bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
KUBERNETES_DIR=${ROOT_DIR}/k8s

# kubectl config get-contexts
# kubectl config current-context

DEPLOYMENTS_DIR=${KUBERNETES_DIR}/deployments
NETWORKING_DIR=${KUBERNETES_DIR}/networking
SERVICES_DIR=${KUBERNETES_DIR}/services

# create ingresses
kubectl --context minikube apply -f ${NETWORKING_DIR}/api-ingress.yml
kubectl --context minikube apply -f ${NETWORKING_DIR}/web-ingress.yml

kubectl --context minikube get ingress

# create services
kubectl --context minikube apply -f ${SERVICES_DIR}/backend-service.yml
kubectl --context minikube apply -f ${SERVICES_DIR}/web-app.yml

# create deployments
kubectl --context minikube apply -f ${DEPLOYMENTS_DIR}/backend-service.yml
kubectl --context minikube apply -f ${DEPLOYMENTS_DIR}/web-app.yml




