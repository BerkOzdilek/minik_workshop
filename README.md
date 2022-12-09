`minikube start`

`minikube dashboard`

`eval $(minikube docker-env) && dims && k9s`

`kubectl config current-context`
`kubectl get pod`
`kubectl get pod -n kube-system`

`minikube addons enable ingress`
`minikube addons list`

`kubectl get ingress`

`sudo nano /etc/hosts`

```
127.0.0.1     api.myapp.info
127.0.0.1     myapp.info
```
then run `minikube tunnel`


*If minikube is run in a separate wm:*
* run 'minikube docker-env' and get the minikube's ip then put it under /etc/hosts 
  or `minikube ip` or IP from `kubectl get ingress`

`sudo nano /etc/hosts`

```
192.168.99.103 api.myapp.info
192.168.99.103 myapp.info
```
