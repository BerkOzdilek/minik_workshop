`minikube start`

`minikube dashboard`

`eval $(minikube docker-env) && dims && k9s`

`kubectl config current-context`
`kubectl get pod`
`kubectl get pod -n kube-system`

`minikube addons enable ingress`
`minikube addons list`

`kubectl get ingress`

* run 'minikube docker-env' and get the minikube's ip then put it under /etc/hosts

`sudo nano /etc/hosts`

```
192.168.99.103 api.myapp.info
192.168.99.103 myapp.info
```
