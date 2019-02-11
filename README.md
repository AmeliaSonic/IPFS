#IPFS Movie
>###项目目的
>这个项目的目的是使用IPFS服务观看视频资源。
#
>###使用方法
####安装IPFS服务
使用压缩包安装，更多的安装方式参考[官方文档](https://baidu.com)

首先根据平台下载IPFS资源包:

[下载适用于您的平台的IPFS](https://dist.ipfs.io/#go-ipfs)
<br>

-Windows

   下载完成后，解压压缩包，将解压的文件移动至固定位置，配置环境变量，在`path`中新增解压文件的路径，例如存放路径为`d:\go-ipfs`,在环境变量的`path`中增加`d:\go-ipfs`.

   测试:
```javascript
    $ ipfs help
    USAGE:
        ipfs - Global p2p merkle-dag filesystem.
    ...
```
恭喜！ 您现在在计算机上安装了有效的IPFS.

-Mac OS X and Linux

下载完成后，解压压缩包, 将`ipfs`文件移至可执行文件`$PATH`路径下，并使用`install.sh`脚本:

```javascript
    $ tar xvfz go-ipfs.tar.gz
    $ cd go-ipfs
    $ ./install.sh
```
测试:
```javascript
    $ ipfs help
    USAGE:
            ipfs - Global p2p merkle-dag filesystem.
    ...
```
恭喜！ 您现在在计算机上安装了有效的IPFS.

####开启IPFS服务

进入安装路径，运行服务

*首次运行服务的用户需要初始化

初始化默认会将缓存路径设置在用户路径下，如果需要修改至别的路径下，windows用户可以在环境变量中新增变量IPFS_PATH，值设置为对应的路径，然后再初始化，Mac And Linux用户可使用 `ipfs --help`查看对应修改帮助，调整路径


```javascript
> ipfs init
initializing ipfs node at /Users/jbenet/.go-ipfs
generating 2048-bit RSA keypair...done
peer identity: Qmcpo2iLBikrdf1d6QU6vXuNb6P7hwrbNPW9kLAH8eG67z
to get started, enter:

  ipfs cat /ipfs/QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG/readme
```

初始化完成后，如果需要修改ipfs服务的配置，修改用户路径下`.ipfs`文件夹中的`config`文件。其中`StorageMax`是调整本地作为承载服务的最大缓存存储，根据需要进行调整。

运行服务

```javascript
>ipfs daemon
...
```

出现`Daemon is ready`证明服务已启动，注意ipfs服务默认会占用4001、5001、8080端口，如果这些端口已使用，请修改`config`文件对应端口

服务启动成功后，在浏览器中输入
```javascript
http://localhost:5001/webui
```
查看本地ipfs服务运行情况

输入
```javascript
http://localhost:8080/ipns/Qmbg2F7oQHrrbbkvZekKZ9USTMap513KBo8Q17VmpAXhq4
```
观看视频资源
