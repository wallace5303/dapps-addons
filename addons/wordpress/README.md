## 配置信息

web服务端口：8009

## 效果图：

1. 访问web：

    > 在浏览器中访问：http://localhost:8009
    
    注：如果页面空白，请多刷新几次。

    ![](https://i.loli.net/2019/10/24/RjHeKsr6mBlo92S.png)

    ![](https://i.loli.net/2019/10/24/vT32RwbcgOV9eQa.png)

    ![](https://i.loli.net/2019/10/24/HvSIJaY5EWxO3TV.png)

    ![](https://i.loli.net/2019/10/24/uTEntM6NID7rO5J.png)

    ![](https://i.loli.net/2019/10/24/H6kSeoMhjiLJK17.png)

## wordpress代码路径
    ```
    ./dapps/docker/addons/wordpress/www
    ```
## 数据库信息

- 端口：3306
- 数据库root用户密码：123456
- 数据库名称：wordpress
- 数据库wordpress用户密码：123456

- 数据库调优配置文件：./dapps/docker/addons/wordpress/config/mysql.cnf

## 其他说明
1. 查看容器：```$ docker container ls```
2. 进入容器：
   ```
    docker exec -it dapps-wordpress /bin/bash

    # 查看信息
    ps aux
   ```