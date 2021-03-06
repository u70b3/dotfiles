# 本地数据库配置

## docker 安装mysql

### 拉取镜像
```bash
docker pull mysql:5.6.39
```
### 以后台方式启动
```bash
docker run --name my-mysql --rm -v /home/name/mysql_data/:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=kid -p 3306:3306 -d mysql:5.6.39
```
## docker安装redis 集群
使用这个docker可以直接安装一个3-master，3-slave的redis集群

注意不要用README里面的启动方法，会绑定到另外一个IP（原因），用这个命令启动

```
docker run -d --net=host grokzen/redis-cluster:3.0.6
```

## docker安装elastic search
```bash
docker pull elasticsearch:6.5.0
docker run --name my-es -d -e ES_JAVA_OPTS="-Xms1G -Xmx2G" -p 9200:9200 -p 9300:9300 elasticsearch:6.5.0
```
