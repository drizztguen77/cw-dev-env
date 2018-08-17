# Apache Tomcat image with build artifact
FROM tomcat:9.0.10-jre10
LABEL maintainer="Curtis White <curtisawhite77@gmail.com>"
LABEL description="Image containing Tomcat that links to the mongodb container"

ENV JAVA_OPTS -Djava.net.preferIPv4Stack=true
ENV JPDA_ADDRESS=9001
ENV JPDA_TRANSPORT=dt_socket

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY manager.xml /usr/local/tomcat/conf/Catalina/localhost/manager.xml
