#!/usr/bin/env bash

set -x
# 拿到名字变量
NAME=`mvn help:evaluate -Dexpression=project.name | grep "^[^\[]"`
set +x

set -x
#拿到版本变量
VERSION=`mvn help:evaluate -Dexpression=project.version | grep "^[^\[]"`
set +x

set -x
# 杀掉历史进程
docker stop jenkins-springboot-app
set +x

cp target/*.jar /

# 开启新的进程
nohup java -jar target/${NAME}-${VERSION}.jar &
echo '运行成功'