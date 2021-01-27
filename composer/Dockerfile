FROM composer
RUN docker-php-ext-install pdo pdo_mysql bcmath
CMD ["composer", "install", "--no-dev", "--optimize-autoloader"]
