## 配置信息

服务端口：9003

## 说明
1. 查看容器：```$ docker container ls```
2. 进入容器：
   ```
    docker exec -it dapps-php-7-3-10 /bin/bash

    # 查看信息
    php -v
   ```

## 和nginx搭配使用
1. 安装nginx应用
2. 文件目录为：./dapps/docker/www
3. nginx相关配置举例
   ```
    server {
        listen 80;
        charset utf-8;
        server_name 192.168.10.11 local.com;
        root /data/www/test/shop/public;
        index index.html index.htm index.php index.shtml;
        if (!-e $request_filename){
            rewrite ^/(.*)$ /index.php?s=/$1 last;
            break;
        }

        location ~ \.php$ {
            # docker
            root /var/www/html/test/shop/public;
            fastcgi_pass 本机ip:9003; # 或者：127.0.0.1:9003 或者：php-7-3-10:9003 或者：dapps-php-7-3-10:9003
            #fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;

            #fastcgi_pass unix:/dev/shm/php-cgi.sock;
            fastcgi_index  index.php;
            include fastcgi.conf;

        }
    }
   ```

