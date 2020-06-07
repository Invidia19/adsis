FROM httpd:2.4

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Invidia19/adsis.git /myapp/
RUN cp -R /myapp/* /var/local/
RUN chown app:app -R /home/app/

EXPOSE 80


