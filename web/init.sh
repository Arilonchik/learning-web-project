sudo unlink /etc/nginx/wites-enabled/default
sudo ln -sf /home/box/web/etc/ngix.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/ngnix restart

