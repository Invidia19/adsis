FROM php:7.1-apache

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Invidia19/adsis.git /myapps/
RUN apt install php libapache2-mod-php -y
RUN cp -r /myapp/ /var/www/html/


EXPOSE 80