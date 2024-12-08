# Squid

## Squid 用法

浏览器访问在线 [权威指南](https://www.oreilly.com/library/view/squid-the-definitive/0596001622/) 查看详细内容。
或者使用命令行帮助：squid -h 。

```sh
squid -h
Usage: squid [-cdzCFNRVYX] [-n name] [-s | -l facility] [-f config-file] [-[au] port] [-k signal]
    -h | --help       Print help message.
    -v | --version    Print version details.

       -a port   Specify HTTP port number (default: 3128).
       -d level  Write debugging to stderr also.
       -f file   Use given config-file instead of
                 /etc/squid/squid.conf
       -k reconfigure|rotate|shutdown|restart|interrupt|kill|debug|check|parse
                 Parse configuration file, then send signal to 
                 running copy (except -k parse) and exit.
       -n name   Specify service name to use for service operations
                 default is: squid.
       -s | -l facility
                 Enable logging to syslog.
       -u port   Specify ICP port number (default: 3130), disable with 0.
       -z        Create missing swap directories and then exit.
       -C        Do not catch fatal signals.
       -D        OBSOLETE. Scheduled for removal.
       -F        Don't serve any requests until store is rebuilt.
       -N        Master process runs in foreground and is a worker. No kids.
       --foreground
                 Master process runs in foreground and creates worker kids.
       --kid role-ID
                 Play a given SMP kid process role, with a given ID. Do not use
                 this option. It is meant for the master process use only.
       -R        Do not set REUSEADDR on port.
       -S        Double-check swap during rebuild.
       -X        Force full debugging.
                 Add -d9 to also write full debugging to stderr.
       -Y        Only return UDP_HIT or UDP_MISS_NOFETCH during fast reload.
```

### 相关目录

* /etc/squid/squid.conf           #配置文件
* /etc/rc.d/init.d/squid          #启动脚本
* /usr/sbin/squid                 #二进制命令
* /usr/share/doc/squid-3.1.10     #手册
* /var/log/squid                  #日志目录
* /var/spool/squid                #缓存目录

## 配置

## 缓存代理

## Http转发