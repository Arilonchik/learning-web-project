sudo ln -sf /home/box/web/etc/ngix.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/ngnix restart
sudo gunicorn -c /home/box/web/etc/gunicorn-django.conf.py ask.ask.wsgi:application
sudo gunicorn -c /home/box/web/etc/gunicorn.conf.py hello:wsgiapp

