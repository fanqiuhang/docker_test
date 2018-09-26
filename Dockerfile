FROM hub.c.163.com/fanqiuhang/java

MAINTAINER fanqiuhang

ADD /build/libs/test-*.war app.war

ENTRYPOINT ["java","-jar","app.war"]

EXPOSE 9900