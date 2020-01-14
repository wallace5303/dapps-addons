FROM ubuntu:16.04

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get clean && apt-get update

RUN set -x \
  && apt-get install -y nginx bash vim net-tools curl wget build-essential python htop tree git

WORKDIR /home

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]