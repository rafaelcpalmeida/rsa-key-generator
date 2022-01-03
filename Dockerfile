FROM php:8.1-apache-bullseye

COPY script.sh index.php /var/www/html

RUN apt update && apt install --yes --no-install-recommends openssh-client openssl
