#!/usr/bin/env bash

set -x
# 拿到名字变量
NAME=`mvn help:evaluate -Dexpression=project.name | grep "^[^\[]"`
set +x

set -x
#拿到版本变量
VERSION=`mvn help:evaluate -Dexpression=project.version | grep "^[^\[]"`
set +x

ps -ef | grep target/${NAME}-${VERSION}.jar |grep -v grep| awk '{print $2}' > .pidFile

cp target/*.jar /
# 开启新的进程
nohup java -jar target/${NAME}-${VERSION}.jar &