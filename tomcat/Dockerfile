# Apache Tomcat image with build artifact
FROM tomcat:9.0.10-jre10
LABEL maintainer="Curtis White <curtisawhite77@gmail.com>"
LABEL description="Image containing Tomcat that links to the mongodb container"

#ENV JAVA_OPTS " -Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Dfile.encoding=UTF-8 -Djava.net.preferIPv4Stack=true -XX:+UseConcMarkSweepGC -Xms512m -Xmx2048m -noverify -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=${DEBUG_PORT} "
#ENV JAVA_OPTS " -Djava.net.preferIPv4Stack=true -Dlog4j2.debug=true -Djava.net.preferIPv4Stack=true "
ENV JAVA_OPTS "-Djava.net.preferIPv4Stack=true -Dorg.apache.logging.log4j.simplelog.StatusLogger.level=debug"
ENV JPDA_ADDRESS=9001
ENV JPDA_TRANSPORT=dt_socket

RUN echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' > /etc/nsswitch.conf

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY manager.xml /usr/local/tomcat/conf/Catalina/localhost/manager.xml
