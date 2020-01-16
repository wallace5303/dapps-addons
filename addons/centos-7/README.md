## 使用

安装后效果：

![](https://i.loli.net/2020/01/16/6bvhEnC5YAJgwqe.png)

## 说明
- 本机与Centos共享目录为：dapps/docker/addons/centos-7/www

## 使用举例

1. 进入Centos系统：

    ```
    # 进入
    docker exec -it dapps-centos-7 /bin/bash
    ```
    ![](https://i.loli.net/2020/01/16/6bvhEnC5YAJgwqe.png)

2. 测试运行一个脚本
    
    ```
    # 目录：/home
    python hello.py
    # Hello, World!
    ```
3. 本机共享目录
    ![](https://i.loli.net/2020/01/16/EKkG1Nx4bimTlAq.png)   


本项目基于开源项目： Centos
    





