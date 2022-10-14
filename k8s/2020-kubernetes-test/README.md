# connection test with squirrel 
http://www.squirrelsql.org/#installation
# connection jar
https://downloads.mariadb.com/Connectors/java/connector-java-2.6.0/
# copy JAR to SQuirreLSQL.app/Contents/Resources/Java/lib

# start maria db  with docker
# default database mysql
docker run --publish=3306:3306 -e MYSQL_ROOT_PASSWORD=maria1! -d -v /Users/mwa17610/volumes/dck/rap/db/data:/var/lib/mysql mariadb
# connection URL 
jdbc:mysql://localhost:3306/mysql
# connection URL

# RAP 3 structure
3 PODS, phptools, rap4 and rap-db

# rap4 in kubernetes
for f in *k8s.yaml;do kubectl apply -f $f;done
# PHP tools
kubectl apply -f phptools.yaml
# Install all 
for f in *.yaml;do kubectl apply -f $f;done

# URL's op localhost : 
rap4 : http://localhost:31102/rap4/#/Login
PHP tools : http://localhost:31101

# Cleanup (use CTRL-C to continue on 'waits')
for f in cleanup*;do source $f;done


- ngix loadbalancer
- certificaten
- requirements
- shared state tussen PODs
(standaard werkt niet goed)
ROOK.io (cluster FS, filesysteem duplicatie)

NFS POD draaien als service aan andere PODs

POD1 -|-> NFS POD (PV->PVC-> persistent disk)
POD2 -|

stdin , in een container laden

ExecEngineFunctions.php ("prototype")
docker 1 rap4, script via stdin -> 

- continuous deployment (gitlab TNO, koppeling naar K8S cluster, merge naar master triggert PROD )

- namespaces gebruiken (PROD namespace maken (als eerste), dan staging)

kustomize OF dupliceren

environment variabelen : 

## Ingress : 
- opties
1) google kubernetes GKE (ingress resource) -> google loadbalancers (traag, 15 minuten voor ze live zijn (5 gratis, daarboven kosten)2) ngix ingress controller

cert-manager.io/cluster-issuer

- host: url
  http:
    paths:
    -backend : 
        serviceName
        servicePort

tls: 
- hosts:
  - semantics
  serviceName: tls-cert-letsencrypt-semantic

lets encrypt (max 50 subdomeinen challengen per dag)
- cert manager
=> staging is niet helemaal safe

e-validator
- servername - IP - certificate mapping

organisatie check (is level 2)

comodo is een alternatief maar NIET veiliger!


cert-manager
cicd
maria db
documentation pagina

Services : 
LoadBalancer (kostbaar) -> Ingress (controller met vast extern IP, verdeelt verkeer in cluster) -> NodePort -> ClusterIP

## Continuous deployment
Google container registry : 

Niet met latest werken, maar met een commit tag!

* gitlab ci

Build : 

dev, master : docker hub van google

image: dtzar/helm-kubectl
script: 
  - kubectl config set

* automatische roll-out
* ingress MET certmanager
* studenten oplossing prototypes aanbieden (PAD)

Azure 
az ad sp create-for-rbac --name {appId} --password "{strong password}"


az ad sp create-for-rbac --name {appId} --password "{strong password}"




#!/bin/bash 

az login az aks get-credentials --subscription 67482258-fccb-499e-8341-a5be6676edb1 --resource-group ordina.rap.aquaas --name ordina-rap-aquaas



az login az aks get-credentials --subscription 67482258-fccb-499e-8341-a5be6676edb1 --resource-group ordina.rap.aquaas --name ordina-rap-aquaas






