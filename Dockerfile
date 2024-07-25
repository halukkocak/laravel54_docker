FROM php:5.6-apache

RUN docker-php-ext-install -j$(nproc) mysql opcache pdo pdo_mysql

RUN mv "/usr/local/etc/php/php.ini-development" "/usr/local/etc/php/php.ini"

ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf

RUN a2enmod rewrite headers

RUN curl -sS https://getcomposer.org/installer | php -- --version=2.0.7 --install-dir=/usr/local/bin --filename=composer
