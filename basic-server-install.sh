#!/bin/bash
apt-get -y update
apt-get -y install mysql-server
apt-get -y install apache2
apt-get -y install php5 libapache2-mod-php5
apt-get -y install php5-cli php5-common php5-imagick php5-curl php5-gd php5-imap php5-mcrypt php5-mysql php5-xmlrpc php5-intl
apt-get -y install pure-ftpd
apt-get -y install phpmyadmin

wget https://raw.githubusercontent.com/chrisdarby/debian-scripts/master/apache-template
wget https://raw.githubusercontent.com/chrisdarby/debian-scripts/master/host.sh

cp apache-template /etc/apache2/sites-available/template-standard

cp host.sh /usr/bin/make-host

chmod 777 /usr/bin/make-host

cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/

service apache2 restart
