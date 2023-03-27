FROM php:8.2.4-fpm-alpine3.17

RUN docker-php-ext-install pdo pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer\
    openssl req -x509 -nodes -days 365 \
    -subj  "/C=CA/ST=QC/O=Company Inc/CN=example.com" \
     -newkey rsa:2048 -keyout etc/ssl/private/nginx-selfsigned.key \
     -out etc/ssl/certs/nginx-selfsigned.crt;
