FROM php:7.1-fpm-alpine3.4

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
RUN git clone https://github.com/Invidia19/adsis.git /myapp/
RUN cp -r myapp/ app/






