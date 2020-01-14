## 使用

安装后效果：

![](https://i.loli.net/2020/01/14/oc7HKCGFj1bn9XL.png)
![](https://i.loli.net/2020/01/14/KuTiCUG5rLWAXgz.png)

## 说明
- 本机与ubuntu共享目录为：dapps/docker/addons/ubuntu-16-04/www

## 使用举例

1. 进入ubuntu系统：

    ```
    # 进入
    docker exec -it dapps-ubuntu-16-04 /bin/bash
    # 查看版本
    cat /etc/os-release
    ```
    ![](https://i.loli.net/2020/01/14/KuTiCUG5rLWAXgz.png)

2. 测试运行一个脚本
    
    ```
    # 目录：/home
    python hello.py
    # Hello, World!
    ```
3. 本机共享目录
    ![](https://i.loli.net/2020/01/14/w9e6O5EFNBT7Kd3.png)   


本项目基于开源项目： ubuntu
    





