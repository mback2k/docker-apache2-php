FROM ghcr.io/mback2k/docker-apache2:latest

ARG PHP_VERSION=7.4

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        php${PHP_VERSION} libapache2-mod-php${PHP_VERSION} \
        php${PHP_VERSION}-cli php${PHP_VERSION}-opcache && \
    apt-get clean

ADD php-memory-limit.ini /etc/php/${PHP_VERSION}/cli/conf.d/99-php-memory-limit.ini
ADD php-memory-limit.ini /etc/php/${PHP_VERSION}/apache2/conf.d/99-php-memory-limit.ini

ADD opcache-recommended.ini /etc/php/${PHP_VERSION}/cli/conf.d/99-opcache-recommended.ini
ADD opcache-recommended.ini /etc/php/${PHP_VERSION}/apache2/conf.d/99-opcache-recommended.ini
