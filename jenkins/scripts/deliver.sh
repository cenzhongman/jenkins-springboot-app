#!/usr/bin/sh

# 获得项目名
NAME=`mvn help:evaluate -Dexpression=project.name | grep "^[^\[]"`

# 获得项目版本
VERSION=`mvn help:evaluate -Dexpression=project.version | grep "^[^\[]"`

# kill函数
killNetstat(){
    processId=`ps -ef | grep ${NAME}-${VERSION}.jar | grep java | awk '{print $2}'`
    if ["$processId" = ""]
    then
        
    else
        kill -9 $processId
}

cp target/*.jar /

killNetstat

source /etc/profile

nohup java -jar *.jar &

tail -f nohup.out
