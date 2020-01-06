FROM php:5.6-alpine

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories;

RUN set -x \
  && mkdir -p /var/www/html \
  && chown -R www-data /var/www/html \
  && apk --update --no-cache add wget bash

COPY www/opensns.zip /tmp/app.zip

RUN unzip /tmp/app.zip -d /var/www/html \ 
  && chmod -R 777 /var/www/html \
  && rm -rf /tmp/*

RUN set -x \
  && apk add --no-cache --update \
        freetype libpng libjpeg-turbo \
        freetype-dev libpng-dev libjpeg-turbo-dev \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install -j "$(getconf _NPROCESSORS_ONLN)" gd \
  && docker-php-ext-install -j$(nproc) pdo_mysql mysql mysqli \
  && apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev

WORKDIR /var/www/html

COPY entrypoint.sh /usr/local/bin/

EXPOSE 80

#ENTRYPOINT ["entrypoint.sh"]
CMD [ "php", "-S", "0000:80", "-t", "/var/www/html" ]