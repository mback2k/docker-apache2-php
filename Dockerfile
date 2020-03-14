FROM mback2k/apache2

ARG PHP_VERSION=7.2

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libapache2-mod-php${PHP_VERSION} && \
    apt-get clean
