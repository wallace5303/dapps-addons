## 使用（不熟悉docker的用户不建议使用，请用web版）

1. 登录
    ```
        # 进入程序
        docker exec -it dapps-baidupcs-go /bin/sh

        # 登录网盘账号
        BaiduPCS-Go login

        # 下载一个压缩包文件，其中：/test/cmder.zip为百度网盘中资料的路径
        BaiduPCS-Go d /test/cmder.zip

        # 默认保存位置
        ./dapps/docker/addons/baidupcs-go/downloads
    ```

2. 效果图

    ![](https://i.loli.net/2019/10/30/MmcLHY8uw6CzgvJ.png)

    ![](https://i.loli.net/2019/10/30/eR78mUdIhTM1VWX.png)

3. 更多使用方式
   
   [BaiduPCS-Go百度网盘客户端](https://github.com/iikira/BaiduPCS-Go)


#### 本项目基于开源项目： [BaiduPCS-Go](https://github.com/iikira/BaiduPCS-Go)