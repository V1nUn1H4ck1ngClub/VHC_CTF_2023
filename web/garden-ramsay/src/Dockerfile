FROM php:apache

RUN chown -R root:www-data . &&\
    chmod 750 .

RUN find . -type f -exec chmod 640 {} \;
RUN find . -type d -exec chmod 750 {} \;

