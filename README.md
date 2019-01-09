# Proxy
一款基于C/S架构的正向代理软件，支持socks5和http协议代理。

## 使用说明
### 服务器端部署

```
$ docker run -d --name proxy_server -p 8388:8388 -e PASSWD=admin --restart=always imdevops/proxy:server
```
*服务器端默认密码为：PASSWORD123，如需修改可以通过传入环境变量PASSWD修改。

### 客户端部署

```
$ docker run -d --name proxy_client -p 1080:1080 -p 8123:8123 -e IP=server_ip -e PASSWD=admin -e PORT=8388 --restart=always imdevops/proxy:client
```
*1080端口为socks5协议代理端口
*8123端口为http协议代理端口。
