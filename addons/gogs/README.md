## 配置信息

1. 服务端口：10022
2. web服务端口：8005

## 说明
1. 查看容器：```$ docker container ls```
2. 进入容器：
   ```
    docker exec -it dapps-gogs /bin/bash

    # 查看信息
    ps aux
   ```

## 效果图：

1. 访问web：

    > 在浏览器中访问：http://localhost:8005

2. 按提示安装：
     1. 安装程序信息：
     - 如果使用的是dapps的mysql，修改：127.0.0.1:3306 为 本机IP地址:3306
     - 修改HTTP端口号：3000为8005
     - 修改应用URL：http://localhost:3000/ 为：http://localhost:8005/

    ![](http://img02.shangguantv.com/pic/20190827113422.png)

    2. 注册用户
    ![](http://img02.shangguantv.com/pic/20190827140650.png)

    3. 使用
    ![](http://img02.shangguantv.com/pic/20190827140910.png)
    

3. 文档：

    [Gogs官方文档](https://gogs.io/docs)


