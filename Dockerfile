FROM httpd:2.4

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Invidia19/adsis.git /myapp/
RUN cp -R /myapp/* /usr/local/apache2/htdocs/
RUN rm /usr/local/apache2/htdocs/index.html


EXPOSE 80


