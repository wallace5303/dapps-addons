FROM php:7.2.21-alpine

ENV TYPECHO_VERSION=1.1
ENV TYPECHO_URL="https://github.com/typecho/typecho/releases/download/v1.1-17.10.30-release/1.1.17.10.30.-release.tar.gz"

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories;

RUN set -x \
  && mkdir -p /usr/src/typecho \
  && apk --update --no-cache add wget bash \
  && wget -O /tmp/typecho.tar.gz "$TYPECHO_URL" \
  && tar -xzf /tmp/typecho.tar.gz -C /usr/src/typecho/ --strip-components=1 \
  && apk del wget \
  && rm -rf /tmp/*

RUN set -x \
  && apk add --no-cache --update \
  && docker-php-ext-install -j$(nproc) pdo_mysql mysqli

WORKDIR /var/www/html

COPY entrypoint.sh /usr/local/bin/

EXPOSE 80

ENTRYPOINT ["entrypoint.sh"]
CMD [ "php", "-S", "0000:80", "-t", "/var/www/html" ]