docker run -d --name mysql-1 -v /dockvol/mysql-1:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=abcd1234 -p 3306:3306 mysql:8.0.17
