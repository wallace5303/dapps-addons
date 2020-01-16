## 使用

安装后效果：

![](https://i.loli.net/2020/01/16/a8unFIz7fts1LQx.png)

## 说明
- 本机与Centos共享目录为：dapps/docker/addons/centos-6/www

## 使用举例

1. 进入Centos系统：

    ```
    # 进入
    docker exec -it dapps-centos-6 /bin/bash
    ```
    ![](https://i.loli.net/2020/01/16/a8unFIz7fts1LQx.png)

2. 测试运行一个脚本
    
    ```
    # 目录：/home
    python hello.py
    # Hello, World!
    ```
3. 本机共享目录
    ![](https://i.loli.net/2020/01/16/qDhyQIvmz35kbg8.png)   


本项目基于开源项目： Centos
    





