# 使用红杏公益代理加速 GITHUB

## 红杏 公益代理

红杏 是 科学上网 利器，大家都懂的。
默认 只能在浏览器端访问 被X 网站，而对于命令行工具无能为力。
作者 推出了一个 公益代理 专为开发人员 使用，业界良心，使用 http 协议。

```cson
host: hx.gy
port: 1080
```

[我的推广链接]，一个月 10 元 RMB，充值后大家各增加 10 天使用时长。

## ProxyCommand

* edit `~/.ssh/config`, add global proxy command.

```config
HOST *
  ProxyCommand connect -H hx.gy:1080 %h %p
```

## 流量转发工具

### connect

GITHUB: https://bitbucket.org/gotoh/connect/wiki/Home

* 安装

```bash
$ hg clone ssh://hg@bitbucket.org/gotoh/connect ~/.ssh/connect
$ cd ~/.ssh/connect
$ make
$ cp ./connect /usr/local/connect
```

* 使用

```bash
# http
$ connect -H socks.host:port %h %p
# socks
$ connect -S socks.host:port %h %p
```

### netcat (nc)

```bash
# http
$ nc -x host:port -X connect %h %p
# socks
$ nc -x host:port -X 5 %h %p
```


## 参考资料

* [npm，gem，android sdk加速器——红杏公益代理](http://www.jianshu.com/p/2e7088e58ade)
* [如何为 Git 设置代理？](http://segmentfault.com/q/1010000000118837)
* [SSH via HTTP proxy in OSX](http://localhost:4000/201507/git_proxy.html)
