FROM wordpress:latest

RUN apt-get update \
    && apt-get install -y zlib1g-dev libzip-dev libxml2-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip 

## 2024.10.17
RUN pecl install channel://pecl.php.net/xmlrpc-1.0.0RC3 xmlrpc
