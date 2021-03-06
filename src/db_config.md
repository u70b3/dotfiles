# 基于docker搭建本地数据库环境
更新在部落格上 https://blog.libingshuai.com/

> 本地搭建数据库真的是既折磨又搞乱环境，基于docker可以很方便的解决，记录一下配置避免每次都重新搞

## docker 安装mysql

拉取并在后台运行，MySQL5.7新增JSON原生支持，然而密码配置不太一样，这里用5.6

```bash
docker pull mysql:5.6.39
docker run --name my-mysql --rm -v /home/name/mysql_data/:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=kid -p 3306:3306 -d mysql:5.6.39
```
## docker安装redis 集群
使用这个docker可以直接安装一个3-master，3-slave的redis集群

注意不要用README里面的启动方法，会绑定到另外一个IP（原因），用这个命令启动

```
docker run -d --net=host grokzen/redis-cluster:3.0.6
```

## docker安装elastic search

拉取并配置

```bash
docker pull elasticsearch:6.5.0
docker run --name my-es -d -e ES_JAVA_OPTS="-Xms1G -Xmx2G" -p 9200:9200 -p 9300:9300 elasticsearch:6.5.0
```
