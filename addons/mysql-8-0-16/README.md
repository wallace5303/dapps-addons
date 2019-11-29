## 配置信息

1. 默认用户名：root
2. 默认密码：123456
3. 端口：3307


## 说明
1. 查看容器：```$ docker container ls```
2. 进入容器：
   ```
    docker exec -it dapps-mysql-8-0-16 /bin/bash

    # 查看信息
    mysql -V
   ```

## mysql8.0客户端连接报错

原因：

mysql8 之前的版本中加密规则是mysql_native_password,而在mysql8之后,加密规则是caching_sha2_password

解决：https://www.jianshu.com/p/502f41ab2719

