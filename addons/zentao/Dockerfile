FROM php:7.2.21-alpine

ENV ZENTAO_VERSION=11.7.0
ENV ZENTAO_URL="http://dl.cnezsoft.com/zentao/11.7/ZenTaoPMS.11.7.stable.zip"

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories;

RUN set -x \
  && mkdir -p /usr/src/zentao \
  && apk --update --no-cache add wget bash \
  && wget -O /tmp/zentao.zip "$ZENTAO_URL" \
  && unzip /tmp/zentao.zip -d /usr/src/zentao \ 
  && rm -rf /tmp/*

RUN set -x \
  && apk add --no-cache --update \
        freetype libpng libjpeg-turbo \
        freetype-dev libpng-dev libjpeg-turbo-dev \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install -j "$(getconf _NPROCESSORS_ONLN)" gd \
  && docker-php-ext-install -j$(nproc) pdo_mysql mysqli, json, filter, openssl, mbstring, zlib, curl, iconv \
  && apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev

WORKDIR /var/www/html

COPY entrypoint.sh /usr/local/bin/

EXPOSE 80

ENTRYPOINT ["entrypoint.sh"]
CMD [ "php", "-S", "0000:80", "-t", "/var/www/html/www" ]