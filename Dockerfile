FROM openjdk:8-jdk-alpine

VOLUME /tmp
RUN mkdir -p /logs
RUN mkdir scripts
RUN chmod 777 /logs
EXPOSE 8080

ADD target/*.war hello-world.war
ENTRYPOINT ["java","-war","hellow-world.war"]
