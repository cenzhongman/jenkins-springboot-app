#!/bin/bash

echo "正在下载项目"
git clone https://github.com/cenzhongman/jenkins-springboot-app.git

echo "请在Github/Gitlab创建新的项目并，提供您的git地址"
read gitPath

echo "请输入您的项目名"
read applicationName

mv jenkins-springboot-app $applicationName
cd $applicationName
rm -rf .git
sed -i "s/jenkins-springboot-app/$applicationName/g" pom.xml
git init
git remote add origin $gitPath
git add .
git commit -m "Build from cenzhongman jenkins-springboot-app application!"
git push -u origin master

echo "项目初始化成功"
