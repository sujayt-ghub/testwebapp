FROM php:7.4-apache

RUN apt-get update

RUN docker-php-ext-install mysqli 
RUN docker-php-ext-enable mysqli

#COPY ./ /var/www/html/
COPY SamplePage.php /var/www/html/
COPY dbinfo.inc /var/www/
EXPOSE 80

