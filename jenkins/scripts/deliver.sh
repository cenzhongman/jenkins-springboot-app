#!/usr/bin/sh

# 获得项目名
set -x
NAME=`mvn help:evaluate -Dexpression=project.name | grep "^[^\[]"`
set +x
echo $NAME

# 获得项目版本
set -x
VERSION=`mvn help:evaluate -Dexpression=project.version | grep "^[^\[]"`
set +x
echo $VERSION

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
