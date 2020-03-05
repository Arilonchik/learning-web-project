sudo /etc/init.d/mysql start
mysql -uroot -e "CREATE DATABASE 'qa' DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci"
mysql -uroot -e "CREATE USER 'ari'@'localhost' IDENTIFIED BY 'password'"
mysql -uroot -e "FLUSH PRIVILEGES"
mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'ari'@'localhost' WITH GRANT OPTION"
