#
# Create Docker Container with VaadinDemo.war
#

FROM tomcat:8.5.11-jre8-alpine

#
# The default Tomcat environment in the image for versions 7 and 8 is:
#
#CATALINA_BASE:   /usr/local/tomcat
#CATALINA_HOME:   /usr/local/tomcat
#CATALINA_TMPDIR: /usr/local/tomcat/temp
#JRE_HOME:        /usr
#CLASSPATH:       /usr/local/tomcat/bin/bootstrap.jar:/usr/local/tomcat/bin/tomcat-juli.jar
#
RUN mkdir /usr/local/tomcat/webapps
COPY ["target/VaadinDemo-0.0.1-SNAPSHOT.war"] /usr/local/tomcat/webapps

#
# bauen mit maven package docker:build
# s.h. https://jaxenter.de/docker-mit-maven-steuern-20211
# 