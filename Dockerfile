FROM php:7.3-apache

RUN docker-php-ext-install mysqli
RUN apt-get update && apt-get install -y git
RUN git clone -b master https://github.com/Invidia19/adsis.git /myapps/
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
RUN cp -r /myapps/ /var/www/html/
RUN chown -R www-data:www-data /var/www/html/myapps
RUN echo "<?php define('ROOT_URL', '/');define('DB_HOST', 'testdocker_mysql_1');define('DB_USER',".getenv("USER").");define('DB_PASS',".getenv("PASSWORD").");define('DB_NAME',". getenv("DATABASE").");" > /var/www/html/myapps/config/config.php 

EXPOSE 80