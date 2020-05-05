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
3 PODS, phptools, rap3 and rap-db

# RAP3 in kubernetes
for f in *k8s.yaml;do kubectl apply -f $f;done
# PHP tools
kubectl apply -f phptools.yaml
# Install all 
for f in *.yaml;do kubectl apply -f $f;done

# URL's op localhost : 
RAP3 : http://localhost:31102/RAP3/#/Login
PHP tools : http://localhost:31101

# Cleanup (use CTRL-C to continue on 'waits')
for f in cleanup*;do source $f;done
