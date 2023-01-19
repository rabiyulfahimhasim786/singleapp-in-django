google cloude ssh

    sudo ssh -i /home/gopi/Documents/googlecloud.pem  bitnami@104.196.26.239
    sudo ssh -i /home/gopi/Documents/gcloud_bkuplinux ksmani@104.196.26.239
    ssh -i "/home/gopi/Documents/ubuntu18.pem" ubuntu@ec2-54-82-163-197.compute-1.amazonaws.com
change owner

    sudo chown -R bitnami:bitnami  .
    sudo chown -R ksmani:ksmani  .
    sudo chown -R ubuntu:ubuntu .
    sudo chown -R www-data:www-data .

    sudo usermod -a -G www-data bitnami
    sudo chmod -R 771 the_single/

Apache Server reload

    sudo service apache2 reload
    sudo systemctl reload apache2


institute.Conf

listen 89
<VirtualHost *:89>
    # The ServerName directive sets the request scheme, hostname and port that
    # the server uses to identify itself. This is used when creating
    # redirection URLs. In the context of virtual hosts, the ServerName
    # specifies what hostname must appear in the request's Host: header to
    # match this virtual host. For the default virtual host (this file) this
    # value is not decisive as it is used as a last resort host regardless.
    # However, you must set it for any further virtual host explicitly.
    #ServerName www.example.com

    ServerAdmin gopikrishvg@gmail.com
    ServerName institute.com
    DocumentRoot /home/bitnami/pythonprojects/institute

    # Available loglevels: trace8, ..., trace1, debug, info, notice, warn,
    # error, crit, alert, emerg.
    # It is also possible to configure the loglevel for particular
    # modules, e.g.
    #LogLevel info ssl:warn

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined

    # For most configuration files from conf-available/, which are
    # enabled or disabled at a global level, it is possible to
    # include a line for only one particular virtual host. For example the
    # following line enables the CGI configuration for this host only
    # after it has been globally disabled with "a2disconf".
    #Include conf-available/serve-cgi-bin.conf
    Alias /static /home/bitnami/pythonprojects/institute/static

    <Directory /home/bitnami/pythonprojects/institute/static>
            Require all granted
    </Directory>

    <Directory /home/bitnami/pythonprojects/institute/institute>
            <Files wsgi.py>
                    Require all granted
            </Files>
    </Directory>

    WSGIScriptAlias / /home/bitnami/pythonprojects/institute/institute/wsgi.py
    WSGIDaemonProcess institute python-path=/home/bitnami/pythonprojects/institute python-home=/home/bitnami/pythonprojects/institute/venv
    WSGIProcessGroup institute
    WSGIPassAuthorization on

</VirtualHost>

Settings.py

pip install django-cors-headers

INSTALLED_APPS = (

    ...
    'corsheaders',
    ...
)

MIDDLEWARE = [

    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.common.CommonMiddleware',
    ...
]
CORS_ORIGIN_ALLOW_ALL = True

Authorization: JWT <your_token>

DB data dump/load
python manage.py dumpdata -e contenttypes -e admin -e auth.Permission --natural-foreign --indent=2 > db.json
python manage.py loaddata db.json
python manage.py sqlflush

sudo apt-get install libapache2-mod-wsgi-py3


client id: 603308840495-pkhpbd3m5lrh9uk5leg0v8u2j4tq6jd1.apps.googleusercontent.com
