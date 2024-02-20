FROM php:8.2-fpm

# Instale as dependências do sistema
RUN apt-get update && apt-get install -y \
    libpq-dev \
    libzip-dev \
    zip \
    unzip \
    curl \
    git \
    libonig-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libxml2-dev \
    libwebp-dev \
    libjpeg62-turbo-dev \
    libmemcached-dev \
    zlib1g-dev \
    libicu-dev \
    g++ \
    libmagickwand-dev \
    libmcrypt-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    pkg-config \
    libssl-dev \
    libz-dev \
    libmemcachedutil2 \
    build-essential \
    libmysqlclient-dev

# Instale as extensões PHP
RUN docker-php-ext-install pdo pdo_pgsql pdo_mysql mbstring zip exif pcntl bcmath opcache gd soap intl

# Instale a extensão Redis
RUN pecl install redis && docker-php-ext-enable redis

# Instale a extensão Memcached
RUN pecl install memcached && docker-php-ext-enable memcached

# Instale o Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

# Instale o Node.js e o NPM
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# Instale o Yarn
RUN npm install --global yarn


CMD ["php-fpm"]
