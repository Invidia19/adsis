FROM php:7.1-fpm-alpine3.4

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Invidia19/adsis.git /myapp/
RUN cp -r myapp/ app/






