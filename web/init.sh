sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo apt update
sudo apt install python3.5
sudo rm /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
sudo pip3 install django==2.1
sudo /etc/init.d/mysql start
mysql -uroot -e "CREATE DATABASE 'qa' DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci"
mysql -uroot -e "CREATE USER 'ari'@'localhost' IDENTIFIED BY 'password'"
mysql -uroot -e "FLUSH PRIVILEGES"
mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'ari'@'localhost' WITH GRANT OPTION"
sudo gunicorn -c /home/box/web/etc/gunicorn-django.conf.py ask.ask.wsgi:application
sudo gunicorn -c /home/box/web/etc/gunicorn.conf.py hello:wsgiapp
