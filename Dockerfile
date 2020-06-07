FROM php:7.4-cli

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Invidia19/adsis.git /myapp/
RUN cp -R /myapp/* /usr/local/apache2/htdocs/






