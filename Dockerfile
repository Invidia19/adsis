FROM php:7.1-apache

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Invidia19/adsis.git /myapps/
RUN cp -r /myapps/ /var/www/html/


EXPOSE 8080