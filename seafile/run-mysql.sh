docker run --name mysql -p 3306:3306 --volumes-from mysql-data -v /var/lib/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=pickle -d mysql:latest
