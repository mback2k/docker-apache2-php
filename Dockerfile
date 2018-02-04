FROM mback2k/apache2

MAINTAINER Marc Hoersken "info@marc-hoersken.de"

ARG PHP_VERSION=php7.0

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libapache2-mod-${PHP_VERSION} && \
    apt-get clean
