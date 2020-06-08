FROM php:7.3-apache

RUN docker-php-ext-install mysqli
RUN apt-get update && apt-get install -y git
RUN git clone -b master https://github.com/Invidia19/adsis.git /myapps/
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
RUN cp -r /myapps/ /var/www/html/
RUN chown -R www-data:www-data /var/www/html/myapps


EXPOSE 80