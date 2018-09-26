docker_test

做了一个docker的简单学习

首先搭建一个简单的服务器，当然，最简单了，就是一个controller，访问转发到一个页面，这个页面只有一行字，this is test

做好了，编写一个Dockerfile，根据 hub.c.163.com/fanqiuhang/java 这个镜像，做成一个新的镜像，这里用springboot，内置tomcat，直接用java -jar app.war就可以直接启动这个应用了
还编写了一个 build.sh 的linux执行脚本，win10子系统ubuntu可以直接挂到代码的目录，直接执行脚本文件，就会自动编译，生成镜像，然后运行docker容器

遇到的问题
1，之前不知道springboot可以java -jar直接运行应用的
2，我的docker是装的windows版的。应用运行后，日志放到 /logs/ 下，我挂载目录的时候，就挂载windows系统的目录 e:/log
3,一个重要的符号 · ，就是1左边那个按钮，英文状态下没有shift状态下，
  if [ 1 = `docker ps -f=name=test -f=status=running -q | wc -l` ]; then
    echo "启动成功"
  else
    echo "启动失败"
  fi
  docker ps 一系列命令，用这个特殊符号括起来的，当然，这里不是单引号，不是单引号，不是单引号。
    
  对，这个符号就反引号。一般用法就是，一个命令需要写在一个字符串中，但是用单引号或者双引号都会导致真的变成了字符串，这个时候用单引号把命令括起来，命令就可以执行了。比如在Dockerfile中，用反引号括起来，命令的颜色就变了
