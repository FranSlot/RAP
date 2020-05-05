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