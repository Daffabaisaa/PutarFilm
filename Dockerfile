# Gunakan image resmi PHP dengan Apache
FROM php:8.2-apache

# Install dependensi tambahan (untuk Laravel dan aplikasi Node.js)
RUN apt-get update && apt-get install -y \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    git \
    nodejs \
    npm

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set working directory
WORKDIR /var/www/html

# Salin semua file ke container
COPY . .

# Install dependensi Laravel
RUN composer install

# Install dependensi React
RUN npm install

# Bangun frontend (React)
RUN npm run build

# Set permission
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Expose port untuk aplikasi Laravel
EXPOSE 80

# Jalankan Laravel di mode development
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=80"]
