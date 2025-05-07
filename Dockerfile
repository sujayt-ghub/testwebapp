FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2 php php-mysqli
WORKDIR /var/www
RUN mkdir inc
#COPY ./ /var/www/html/
COPY SamplePage.php /var/www/html/
COPY dbinfo.inc /var/www/inc/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
