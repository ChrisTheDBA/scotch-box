+#!/usr/bin/env bash

# Update PHP Repo
sudo rm /etc/apt/sources.list.d/ondrej-php5-5_6-trusty.list
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get -y update

# Remove PHP 5.6
sudo apt-get --remove purge -y php5 php5-cli php5-curl php5-gd php5-intl php5-mcrypt php5-memcached php5-mysqlnd php5-readline php5-sqlite php5-cgi php5-common php5-fpm php5-imagick php5-json php5-memcache php5-mongo php5-pgsql php5-redis php-pear
sudo apt-get -y autoremove

# Install PHP 7.0
sudo apt-get -y install php7.0 php7.0-common php7.0-cgi php7.0-fpm php7.0-pgsql php7.0-cli php7.0-json php7.0-curl php7.0-mcrypt php7.0-gd php7.0-intl php7.0-mysql php7.0-readline php7.0-mbstring php7.0-sqlite3 php7.0-zip php7.0-xml php7.0-opcache php-memcached php-mongodb php-memcache php-imagick php-xdebug php-redis
sudo apt-get -y install libapache2-mod-php7.0
sudo service apache2 restart

sudo apt-get -y build-dep gdal

wget http://download.osgeo.org/gdal/2.1.0/gdal-2.1.0.tar.gz
tar xvzf gdal-2.1.0.tar.gz

cd gdal-2.1.0/
./configure --prefix=/usr/
make
sudo make install
cd swig/python/
sudo python setup.py install

sudo apt-get -y install libudunits2-dev

sudo apt-get -y install libv8-3.14-dev
