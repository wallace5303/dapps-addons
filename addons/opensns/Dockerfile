FROM php:5.6-alpine

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories;

RUN set -x \
  && mkdir -p /usr/src/app \
  && apk --update --no-cache add wget bash

COPY www/app.zip /home/app.zip

RUN set -x \
  && unzip /home/app.zip -d /usr/src/app \
  && rm -rf /home/app.zip

RUN set -x \
  && apk add --no-cache --update \
        freetype libpng libjpeg-turbo \
        freetype-dev libpng-dev libjpeg-turbo-dev \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install -j "$(getconf _NPROCESSORS_ONLN)" gd \
  && docker-php-ext-install -j$(nproc) pdo_mysql mysql mysqli \
  && apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev

COPY entrypoint.sh /usr/local/bin/

WORKDIR /var/www/html

EXPOSE 80

ENTRYPOINT ["entrypoint.sh"]

CMD [ "php", "-S", "0000:80", "-t", "/var/www/html" ]