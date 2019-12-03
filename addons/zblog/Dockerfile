FROM php:7.2.21-alpine

ENV ZBLOG_VERSION=1.5.2
ENV ZBLOG_URL="https://update.zblogcn.com/zip/Z-BlogPHP_1_5_2_1935_Zero.zip"

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories;

RUN set -x \
  && mkdir -p /usr/src/zblog \
  && apk --update --no-cache add wget bash \
  && wget -O /tmp/zblog.zip "$ZBLOG_URL" \
  && unzip /tmp/zblog.zip -d /usr/src/zblog \ 
  && rm -rf /tmp/*

RUN set -x \
  && apk add --no-cache --update \
        freetype libpng libjpeg-turbo \
        freetype-dev libpng-dev libjpeg-turbo-dev \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install -j "$(getconf _NPROCESSORS_ONLN)" gd \
  && docker-php-ext-install -j$(nproc) pdo_mysql mysqli \
  && apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev

WORKDIR /var/www/html

COPY entrypoint.sh /usr/local/bin/

EXPOSE 80

ENTRYPOINT ["entrypoint.sh"]
CMD [ "php", "-S", "0000:80", "-t", "/var/www/html" ]