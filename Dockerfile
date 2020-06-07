FROM httpd:2.4

RUN git clone https://github.com/Invidia19/adsis.git /myapp/
RUN cp -R /myapp/* /home/app/
RUN chown app:app -R /home/app/

EXPOSE 80


