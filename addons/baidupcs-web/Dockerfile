FROM alpine:latest

# RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories;
# RUN apk update \
#         && apk add nginx bash

COPY ./script/BaiduPCS-Go /bin
COPY ./script/entrypoint.sh /bin

WORKDIR /bin

RUN chmod +x BaiduPCS-Go && \
    ./BaiduPCS-Go config set -user_agent="" && \
    ./BaiduPCS-Go config set -savedir="/root/Downloads" && \
    chmod +x /bin/entrypoint.sh

EXPOSE 5299

WORKDIR /root/Downloads

# CMD ["nginx", "-g", "daemon off;"]

ENTRYPOINT ["entrypoint.sh"]