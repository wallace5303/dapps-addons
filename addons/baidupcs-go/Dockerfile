FROM alpine:latest

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories;
RUN apk update \
        && apk add nginx bash

COPY ./script/BaiduPCS-Go /bin
WORKDIR /bin

RUN chmod +x BaiduPCS-Go && \
    ./BaiduPCS-Go config set -user_agent="" && \
    ./BaiduPCS-Go config set -savedir="/home" && \
    mkdir /var/run/nginx

EXPOSE 80

WORKDIR /home

CMD ["nginx", "-g", "daemon off;"]