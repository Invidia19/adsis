FROM php:7.1-apache

RUN apt-get update && apt-get install -y git
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY /myapps/ /var/www/
RUN chown -R www-data:www-data /var/www


EXPOSE 80