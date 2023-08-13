# Utilizează o imagine oficială PHP ca bază
FROM php:7.4-apache

# Setează directorul de lucru la /var/www/html
WORKDIR /var/www/html

# Copiază conținutul directorului curent în container la /var/www/html
COPY . /var/www/html

# Instalează pachetele necesare
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Instalează extensia PHP pentru PostgreSQL
RUN apt-get install -y postgresql-client && \
    docker-php-ext-install pgsql pdo_pgsql

# Expune porturile 80 (HTTP) și 5432 (PostgreSQL) dacă este necesar
EXPOSE 80

# Porneste serverul Apache
CMD ["apache2-foreground"]

