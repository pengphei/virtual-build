# virtual-build

## 配置ALI云镜像加速

在 **~/.config/containers/registries.conf** 配置文件中添加加速器配置，内容如下：

````
unqualified-search-registries = ["docker.io"]

[[registry]]
prefix = "docker.io"
insecure = false
blocked = false
location = "ipnum24y.mirror.aliyuncs.com"
````

其中 *ipnum24y.mirror.aliyuncs.com* 根据自己的aliyun镜像地址进行配置。