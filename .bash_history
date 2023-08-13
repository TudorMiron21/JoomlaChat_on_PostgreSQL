nc -l -p 5000
nc 4.231.226.52 5000
nc -l -p 5000
sudo snap install microk8s --classic --channel=1.27
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
su - $USER
vim /etc/docker/daemon.json
sudo vim /etc/docker/daemon.json
ls  /etc/docker/daemon.json
cat /etc/docker/daemon.json
sudo systemctl restart docker
docker image pull nginx
docker image tag nginx localhost:32000/mynginx
docker image push localhost:32000/mynginx
curl localhost:32000/v2/_catalog 
kubectl create deployment mynginx --
alias kubectl='microk8s kubectl'
kubectl create deployment mynginx --replicas=3 --image localhost:32000/mynginx
kubectl get all
kubectl get pods
microk8s status --wait-ready
microk8s kubectl get nodes
microk8s kubectl get services
alias kubectl='microk8s kubectl'
microk8s add-node
kubectl get node
microk8s enable dns
microk8s enable metallb:-IP_PRIVAT_KUBE2
microk8s enable metallb:
microk8s enable metallb:10.0.0.5-10.0.0.6
kubectl port-forward -n observability <OBSERVABILITY_SERVICE>
kubectl port-forward -n observability <OBSERVABILITY_SERVICE> --address IP_PRIVAT_KUBE1 9090:9090
kubectl port-forward -n observability <OBSERVABILITY_SERVICE> --address 10.0.0.5 9090:9090
ls
microk8s enable dashboard
token=$(microk8s kubectl -n kube-system get secret | grep default-token |
token=$(microk8s kubectl -n kube-system get secret | grep default-token | cut -d " " -f1)
echo $token
microk8s kubectl describe secret -n kube-system microk8s-dashboard-token
token=$(microk8s kubectl -n kube-system get secret | grep default-token | cut -d " " -f1)
echo "%token"
echo "$token"
token=$(microk8s kubectl -n kube-system get secret | grep default-token | cut -d " " -f2)
echo "$token"
token=$(microk8s kubectl -n kube-system get secret | grep default-token | cut -d " " -f3)
echo "$token"
token=$(microk8s kubectl -n kube-system get secret | grep default-token | cut -d " " -f5)
echo "$token"
microk8s kubectl -n kube-system get secret | grep default-token | cut -d " " -f5
microk8s kubectl -n kube-system get secret | grep token | cut -d " " -f5
microk8s kubectl -n kube-system get secret | grep token | cut -d " " -f1
icrok8s kubectl -n kube-system get secret | grep token: | cut -d " " -f5
icrok8s kubectl -n kube-system get secret | grep token: | cut -d " " -f1
microk8s kubectl -n kube-system get secret | grep token: | cut -d " " -f1
microk8s kubectl -n kube-system get secret | grep token: | cut -d " " -f2
microk8s kubectl -n kube-system get secret | egrep "token:" | cut -d " " -f2
microk8s kubectl -n kube-system get secret | egrep "token:" | cut -d " " -f1
microk8s enable storage
microk8s enable registry
curl localhost:32000/v2/_catalog
sudo apt-get update
sudo apt-get install docker.io
sudo usermod -aG docker ${USER}
su - ${USER}
ls
TudorMiron@4.231.226.52's password:
Access denied
TudorMiron@4.231.226.52's password:
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1042-azure x86_64)
alias kubectl='microk8s kubectl'
vim postgres-config.yaml
kubectl apply -f postgres-config.yaml
kubectl get configmap
vim postgres-pvc-pv.yaml
kubectl apply -f postgres-pvc-pv.yaml
kubectl get pvc
vim postgres-deployment.yaml
kubectl apply -f postgres-deployment.yaml
kubectl get deployments
kubectl get pods
ls
vim postgres-service.yaml
kubectl apply -f postgres-service.yaml 
kubectl get all
kubectl exec -it kubectl exec -it pod/postgres-7b8bfb4588-z4lxv --  psql -h localhost -U admin --password -p 5432 postgresdb
kubectl exec -it pod/postgres-7b8bfb4588-z4lxv --  psql -h localhost -U admin --password -p 5432 postgresdb
ls
cd new_chat/
ls
cat index.php
vim Dockerfile
docker buid -t tudorchat
docker buid -t tudorchat .
docker build -t tudorchat .
make test
cd ..
ls
docker tag tudorchat localhost:32000/tudorchat
docker push localhost:3200/tudorchat
docker push localhost:32000/tudorchat
kubectl exec -it pod/postgres-7b8bfb4588-z4lxv --  psql -h localhost -U admin --password -p 5432 postgresdb
cd new_chat/
vim db.php 
vim connect.php 
<?php
$conn = pg_connect("host=localhost port=5432 dbname=postgresdb user=admin password=psltest");
if (;conn) {
ls
cd new_chat/
cat connect.php 
docker build -t tudorchat
docker build -t tudorchat .
docker tag tudorchat localhost:32000/tudorchat
docker push localhost:32000/tudorchat
cat Dockerfile 
cd ..
vim php-deployment.yaml
ls
kubeclt get service
alaias kubectl='microk8s kubectl'
alias kubectl='microk8s kubectl'
kubeclt get service
kubectl get service
vim php-deployment.yaml
kubectl apply-f php-deployment.yaml 
kubectl apply -f php-deployment.yaml 
vim php-deployment.yaml
kubectl apply -f php-deployment.yaml 
kubectl get deployment
kubectl delete php-deployment.yaml 
kubectl delete php-app-deployment 
vim php-deployment.yaml
kubectl apply -f php-deployment.yaml 
kubectl get deployment
kubectl delete pod php-app-deployment
vim php-deployment.yaml
kubectl apply -f php-deployment.yaml 
kubectl get deployment
kubectl logs php-deployment -c php-app-container
kubectl get pods -l app=php-app
docker images
vim php-deployment.yaml
kubectl apply -f php-deployment.yaml 
kubectl get deployment
vim php-deployment.yaml
kubectl apply -f php-deployment.yaml 
kubectl get deployment
vim chat-service.yaml
kubectl delete pod php-app-deployment
kubectl delete pod php-deployment
kubectl delete deployment php-deployment
kubectl delete deployment php-app-deployment
kubectl delete deployment chat-deployment
kubectl get deployment
kubectl get pods
vim php-deployment.yaml 
kubectl apply -f php-deployment.yaml 
kubectl get pods
vim php-deployment.yaml 
vim chat-service.yaml
kubectl apply -f chat-service.yaml 
kubectl get pods
kubectl get services
kubectl get nodes -o wide
kubectl get all
kubectl delete service php-app-service
vim chat-service.yaml
kubectl apply -f chat-service.yaml 
vim chat-service.yaml
kubectl apply -f chat-service.yaml 
kubectl get all
vim chat-service.yaml
kubectl delete service php-app-service
kubectl apply -f chat-service.yaml 
vim chat-service.yaml
curl localhost:32000/v2/_catalog
alias kubectl='microk8s kubectl'
kubectl get all
kubectl delete service php-app-service
kubectl delete deployment chat-deployment
kubectl get all
ls
rm chat-service.yaml 
rm php-deployment.yaml 
vim chat-deployment.yaml
kubectl apply -f chat-deployment.yaml 
kubectl get all
cd new_chat/
ls
kubectl ecex -it php-apache-5bff4f9bbd-tqlnp -- /bin/bash
kubectl exec -it php-apache-5bff4f9bbd-tqlnp -- /bin/bash
kubectl expose deployment <nume-deployment> --type=LoadBalancer --port=80 --target-port=80
cd ..
kubectl expose deployment  --type=LoadBalancer --port=88 --target-port=80
kubectl get all
kubectl expose deployment php-apache --type=LoadBalancer --port=88 --target-port=80
kubectl delete service php-apache
kubectl expose deployment php-apache --type=LoadBalancer --port=88 --target-port=80
kubectl get all
ls
vim chat-deployment.yaml 
kubectl delete deployment php-apache
kubectl delete service php-apache
kubectl apply -f chat-deployment.yaml 
vim chat-deployment.yaml 
kubectl delete service php-apache
kubectl delete deployment php-apache
kubectl apply -f chat-deployment.yaml 
cd my
cd new_chat/
cat Dockerfile 
vim Dockerfile 
docker build -t tudorchat .
vim Dockerfile 
docker build -t tudorchat .
docker tag tudorchat localhost:32000/tudorchat
docker push localhost:32000/tudorchat
cd ..
docker history localhost:3200/tudorchat
kubectl get all
kubectl delete service php-apache
kubectl delete deployment php-apache
kubectl apply -f chat-deployment.yaml 
cd new_chat/
ls
cat db.php 
cd ..
ls
cat postgres-config.yaml 
cd new_chat/
vim db.php 
vim connect.php 
docker build -t tudorchat .
docker tag tudorchat localhost:32000/tudorchat
docker push localhost:32000/tudorchat
cd ..
kubectl delete service php-apache
kubectl delete deployment php-apache
kubectl apply -f chat-deployment.yaml 
kubectl get all
kubectl exec -it postgres-7b8bfb4588-z4lxv --  psql -h localhost -U admin --password -p 5432 postgresdb
cd new_chat/
cat index.php 
vim index.php 
docker built -t tudorchat .
docker build -t tudorchat .
docker tag tudorchat localhost:32000/tudorchat
docker push localhost:32000/tudorchat
cd ..
kubectl delete service php-apache
kubectl delete deployment php-apache
kubectl apply -f chat-deployment.yaml 
kubectl get all
kubectl exec -it php-apache-5bff4f9bbd-ljxrc --/bin/bash
kubectl exec -it php-apache-5bff4f9bbd-ljxrc -- /bin/bash
kubectl exec -it php-apache-5bff4f9bbd-jp42k -- /bin/bash
vim chat-deployment.yaml 
kubectl delete service php-apache
kubectl delete deployment php-apache
kubectl apply -f chat-deployment.yaml 
kubectl get all
vim chat-deployment.yaml 
kubectl delete deployment php-apache
kubectl delete service php-apache
kubectl apply -f chat-deployment.yaml 
vim chat-deployment.yaml 
kubectl delete service php-apache
kubectl delete deployment php-apache
kubectl apply -f chat-deployment.yaml 
vim chat-deployment.yaml 
kubectl apply -f chat-deployment.yaml 
vim chat-deployment.yaml 
kubectl get all -o wide
vim chat-deployment.yaml 
kubectl delete deployment php-apache
kubectl delete service php-apache
kubectl apply -f chat-deployment.yaml 
kubectl get all -o wide
vim chat-deployment.yaml 
kubectl apply -f chat-deployment.yaml 
kubectl expose deployment <nume-deployment> --type=LoadBalancer --name=web-service --port=80 --target-port=80
kubectl expose service php-apache --name=web-service --port=88 --target-port=80
kubectl expose deployment php-apache --name=web-service --port=88 --target-port=80
kubectl expose deployment php-apache --name=web-deployment --port=88 --target-port=80
kubectl expose deployment my-deployment --type=ClusterIP --port=80
kubectl expose deployment php-apache --type=ClusterIP --port=88
cd new_chat/
vim Dockerfile 
docker build -t tudorchat .
docker tag tudorchat localhost:32000/tudorchat
docker push localhost:32000/tudorchat
kubectl delete deployment php-apache
kubectl delete service php-apache
kubectl apply -f chat-deployment.yaml 
cd ..
kubectl apply -f chat-deployment.yaml 
cat chat-deployment.yaml 
vim chat-deployment.yaml 
kubectl apply -f chat-deployment.yaml 
kubectl delete service php-apache
kubectl delete deployment php-apache
kubectl apply -f chat-deployment.yaml 
cd new_chat/
vim Dockerfile 
docker build -t tudorchat .
cat Dockerfile 
docker tag tudorchat localhost:32000/tudorchat
docker push localhost:32000/tudorchat
cd ..
kubectl delete deployment php-apache
kubectl delete service php-apache
kubectl apply -f chat-deployment.yaml 
kubectl get all
kubectl delete service web-service
kubectl delete service web-depl
kubectl delete service web-deployment
vim chat-deployment.yaml 
kubectl delete service php-apache
kubectl delete deployment php-apache
kubectl apply -f chat-deployment.yaml 
kubectl delete service php-apache
kubectl delete deployment php-apache
vim chat-deployment.yaml 
kubectl apply -f chat-deployment.yaml 
alias kubectl = 'microk8s kubectl'
alias kubectl='microk8s kubectl'
kubectl get all
ls
cat postgres-pvc-pv.yaml 
vim joomla-pv-pvc.yaml
kubectl apply -f joomla-pv-pvc.yaml 
ls
cat postgres-service.yaml 
cat postgres-config.yaml.yaml 
cat postgres-config.yaml
vim joomla-config.yaml
cat postgres-deployment.yaml 
rm joomla-config.yaml 
vim joomla-mysql.yaml
cat postgres-config.yaml 
vim joomla-mysql.yaml
ls
rm joomla-mysql.yaml 
vim joomla-config.yaml
cat postgres-config.yaml 
vim joomla-config.yaml
cat joomla-config.yaml 
vim joomla-config.yaml
cat joomla-config.yaml 
ls
vim mysql-deployment.yaml
cat postgres-deployment.yaml 
cat joomla-pv-pvc.yaml 
vim mysql-deployment.yaml
cat joomla-config.yaml 
vim mysql-deployment.yaml
kubectl apply -f joomla-config.yaml 
kubectl apply -f mysql-deployment.yaml 
cat mysql-deployment.yaml 
cat chat-deployment.yaml 
kubectl gegt all
kubectl get all
kubectl describe deployment mysql-deployment
kubectl get all
kubectl delete deployment mysql-deployment
kubectl delete service mysql-service
rm joomla-config.yaml 
ls
vim mysql-secret.yaml
kubectl apply -f mysql-secret.yaml
cat joomla-pv-pvc.yaml 
vim mysql-storage.yaml
kubectl apply -f mysql-storage.yaml
vim mysql-deployment.yaml
vim mysql-deployment2.yaml
kubectl apply -f mysql-deployment2.yaml
kubectl get all
vim joomla-deployment.yaml
ls
kubectl get pv
kubectl get pvc
cat chat-deployment.yaml 
kubectl get pv
kubectl delete pv joomla-pv
kubectl delete pv mysql-pv-volume
kubectl get pvc
kubectl delete pv mysql-pv-claim
kubectl delete pvc mysql-pv-claim
kubectl delete pvc joomla-pvc
kubectl get service
kubectl delete service mysql
kubectl get deployment
kubectl delete deployment mysql
kubectl get configmap
kubectl delete configmap mysql-config
mkdir joomla
cd joomla/
vim Dockerfile
rm -R joomla
cd ..
rm -R joomla
ls
mkdir joomla
rm joomla
rm -R joomla
ls
rm -R joomla
ls
mkdir joomla
cd joomla
vim Dockerfile
docker build -t joomla 
docker build -t joomla .
vim Dockerfile
docker build -t joomla .
docker build -t joomla-app .
docker tag joomla-app 
docker tag joomla-app localhost:32000/joomla-app
docker push localhost:32000/joomla-app
cd ..
mkdir mysql-joomla
cd mysql-joomla/
ls
vim Dockerfile
touch backup.sql
cd ..
cd mysql-joomla/
docker build -t mysql-joomla .
sudo docker image tag mysql-joomla localhost:32000/mysql-joomla
sudo docker push localhost:32000/mysql-joomla
cd ..
vim joomla-config.yaml
kubectl apply joomla-config.yaml 
kubectl apply -f joomla-config.yaml 
vim joomla.yaml
kubectl apply -f joomla.yaml 
kubectl get all
cat joomla-config.yaml 
kubectl get all
alias kubectl='microk8s kubectl'
kubectl get all
ls
cat joomla.yaml
vim joomla.yaml
kubectl get all
kubectl delete service joomla
kubectl delete service joomla-mysql
kubectl delete deployment joomla-mysql
kubectl delete deployment joomla
kubectl apply -f joomla.yaml
kubectl get all
cd joomla
ls
vim Dockerfile
ls
cd ..
JOOMLA_MYSQL_POD_NAME=$(sudo microk8s kubectl get pods | grep joomla-mysql | cut -d ' ' -f1)
sudo microk8s kubectl exec "${JOOMLA_MYSQL_POD_NAME}" -- /usr/bin/mysqldump -uroot -proot joomla_db > mysql-joomla/backup.sql
cd mysql-joomla
cat backup.sql 
ls -al
cd ..
sudo microk8s kubectl get pods
sudo microk8s kubectl cp joomla-65554498c4-9wnqm:/var/www/html joomla/joomla_backup
cd joomla/
ls
ls -al
cd joomla_backup/
ls
cat Dockerfile 
cd ..
curl http://localhost:32000/v2/_catalog
docker build -t joomla-app .
docker tag joomla-app localhost:32000/joomla-app
docker push localhost:32000/joomla-app
cd ../mysql-joomla/
docker build -t mysql-joomla .
docker tag mysql-joomla localhost:32000/mysql-joomla
docker push localhost:32000/mysql-joomla
cd ..
kubectl get all
kubectl delete service joomla
kubectl delete service joomla-mysql
kubectl delete deployment joomla-mysql
kubectl delete deployment joomla
kubectl apply -f joomla.yaml
kubectl get all
kubectl delete deployment joomla
kubectl delete deployment joomla-mysql
kubectl delete service joomla-mysql
kubectl delete service joomla
kubectl apply -f joomla.yaml
ls
cat joomla-config.yaml 
rm joomla-pv-pvc.yaml 
rm mysql-deployment.yaml 
rm mysql-storage.yaml 
cat joomla-deployment.yaml 
rm joomla-deployment.yaml 
rm mysql-deployment2.yaml 
rm mysql-secret.yaml 
ls
alias kubectl='microk8s kubectl'
kubectl get all
JOOMLA_MYSQL_POD_NAME=$(sudo microk8s kubectl get pods | grep joomla-mysql | cut -d ' ' -f1)
sudo microk8s kubectl exec "${JOOMLA_MYSQL_POD_NAME}" -- /usr/bin/mysqldump -uroot -proot joomla_db > mysql-joomla/backup.sql
cd mysql-joomla/
ls
TudorMiron@TudorMiron:~/mysql-joomla$ docker build -t
sudo docker build -t mysql-joomla .
sudo docker image tag mysql-joomla localhost:32000/mysql-joomla
sudo docker push localhost:32000/mysql-joomla
cd ..
cd joomla/
kubectl get pods
sudo microk8s kubectl cp joomla-65554498c4-s57xl:/var/www/html joomla/joomla_backup
sudo docker build -t joomla-app .
sudo docker image tag joomla-app localhost:32000/joomla-app
sudo docker push localhost:32000/joomla-app
cd ..
kubectl get all
kubectl delete service joomla
kubectl delete service joomla-mysql
kubectl delete deployment joomla-mysql
kubectl delete deployment joomla
ls
kubectl apply -f joomla.yaml
kubectl get all
kubectl delete service joomla
kubectl delete service joomla-mysql
kubectl delete deployment joomla
kubectl delete service joomla-mysql
vim joomla.yaml 
kubectl apply -f joomla.yaml
kubectl get all
kubectl exec -it [pod-name] --  psql -h localhost -U admin --password -p 5432 postgresdb
kubectl exec -it postgres-7b8bfb4588-z4lxv --  psql -h localhost -U admin --password -p 5432 postgresdb
kubectl get all
cd new_chat/
ls
cat Dockerfile 
ls
cd @@cht/
ls
ls -al log.html 
cd ..
chmod +w @@cht/log.html 
cd @@
cd @@cht/
ls
ls -a
ls -l
chmod a+w log.html 
ls -l
