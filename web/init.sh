sudo unlink /etc/nginx/wites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
gunicorn -c /home/box/web/etc/gunicorn.conf.py hello:wsgiapp

