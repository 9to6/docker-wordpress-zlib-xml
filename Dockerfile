FROM wordpress:latest

RUN apt-get update \
    && apt-get install -y zlib1g-dev libzip-dev libxml2-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip xmlrpc
