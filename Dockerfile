FROM openjdk:8-jdk-alpine
COPY /var/lib/jenkins/workspace/bew/webapp/target/*.war hellow-world.war


