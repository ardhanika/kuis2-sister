FROM php:7.3-apache

COPY . /app

RUN chown -R www-data:www-data /app && a2enmod rewrite
