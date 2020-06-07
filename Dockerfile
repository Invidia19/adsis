FROM php:7.1-apache

RUN apt-get update && apt-get install -y git
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
RUN chown -R www-data:www-data /var/www/html/myapps


EXPOSE 80