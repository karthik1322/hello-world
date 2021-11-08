FROM openjdk:8-jdk-alpine

VOLUME /tmp
RUN mkdir -p /logs
RUN mkdir scripts
RUN chmod 777 /logs
EXPOSE 8080

ADD /var/lib/jenkins/workspace/bew/webapp/target/webapp.war hello-world.war

