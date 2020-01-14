FROM ubuntu:18.04

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get clean && apt-get update

RUN set -x \
  && apt-get install -y nginx bash

#WORKDIR /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]