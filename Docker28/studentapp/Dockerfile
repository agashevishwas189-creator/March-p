FROM ubuntu:20.04

LABEL maintainer="vishwas"

RUN apt-get update && \     
    apt-get install unzip  openjdk-11-jdk -y    

ADD  https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.117/bin/apache-tomcat-9.0.117.zip /opt/

WORKDIR  /opt
RUN unzip apache-tomcat-9.0.117.zip && \
    rm apache-tomcat-9.0.117.zip

COPY contax.xml /opt/apache-tomcat-9.0.117/conf/context.xml    
    
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war /opt/apache-tomcat-9.0.117/webapps/student.war
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar /opt/apache-tomcat-9.0.117/lib/mysql-connector.jar


RUN chmod +rwx /opt/apache-tomcat-9.0.117/bin/*.sh
EXPOSE 8080
CMD ["/opt/apache-tomcat-9.0.117/bin/catalina.sh", "run"]



#commad to build the image
#docker build .
#docker run -d -p 8080:8080 --name studentapp studentapp:latest
#docker ps 
