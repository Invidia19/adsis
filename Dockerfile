FROM httpd:2.4

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Invidia19/adsis.git /myapp/
RUN cp -R /myapp/* /usr/local/apache2/htdocs/
RUN rm /usr/local/apache2/htdocs/index.html
RUN cp -R /usr/local/apache2/htdocs/httpd.conf /usr/local/apache2/conf/httpd.conf
RUN apt install mariadb-server -y
RUN apt-get install php-mysql -y
RUN apt install php libapache2-mod-php -y
RUN service mysqld start
RUN mysql -u root
RUN create database website2;
RUN exit





