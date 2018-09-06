# SpringBoot Jenkins程序开发指南(IDEA版)

拷贝下面代码为sh文件，执行之

```sh
#!/bin/bash

echo "正在下载项目"
git clone http://gitlab.datainsights.biz:1234/cenzhongman/jenkinsSpringBoot.git

echo "请在Github/Gitlab创建新的项目并，提供您的git地址"
gitPath=$(echo $path | grep -o "[^\/]*\.git$") | sed -i "s/\.git//g"

echo "请输入您的项目名"
read applicationName

mv jenkinsSpringBoot $applicationName
cd $applicationName
ls -al
rm -rf .git
sed -i "s/jenkinsSpringBoot/$applicationName/g" pom.xml
git init
git remote add origin $gitPath
git add .
git commit -m "Build from cenzhongman jenkinsSpringBoot application!"
git push -u origin master

echo "项目初始化成功"
```

导入工程