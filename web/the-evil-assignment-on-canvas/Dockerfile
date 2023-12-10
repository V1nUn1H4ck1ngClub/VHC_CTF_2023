FROM richarvey/nginx-php-fpm:latest
RUN mkdir -p /run/nginx
RUN apk add --no-cache nginx-mod-http-lua
ENV PHP_UPLOAD_MAX_FILESIZE 10000
ENV PHP_POST_MAX_SIZE 10000
ENV PHP_MEM_LIMIT 10000
ENV RUN_SCRIPTS 1

RUN mkdir -p /var/www/html/uploads /var/www/html/conf/nginx/ /var/www/html/scripts /data
COPY ./nginx.conf /var/www/html/conf/nginx/
COPY ./upload_dir.sh /var/www/html/scripts/
COPY ./index.php /var/www/html/
COPY ./assets /var/www/html/assets
COPY ./FinalExamAnswers.txt /var/www/
COPY ./deleteScript.sh /var/www/

RUN chown -R root:root /var/www/FinalExamAnswers.txt &&\ 
    chmod 774 /var/www/FinalExamAnswers.txt

WORKDIR /var/www/html

RUN chown -R root:www-data . &&\
    chmod 750 .

EXPOSE 80
#RUN find . -type f -exec chmod 640 {} \;
#RUN find . -type d -exec chmod 750 {} \;

#RUN chmod 777 /var/www/html/uploads/


