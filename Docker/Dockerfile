#
# Dockerfile for SenTuyetShop based on opencart
#

FROM php:5.6-apache
MAINTAINER Philip <phucvd.ce@gmail.com>

RUN a2enmod rewrite

RUN set -xe \
    && apt-get update \
    && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev git-core \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd mcrypt mbstring mysqli zip 

WORKDIR /var/www/html

RUN set -xe \
    && git clone https://github.com/phucvdb/sentuyetshop.git . \
    && chown -R www-data:www-data .

VOLUME /var/www/html