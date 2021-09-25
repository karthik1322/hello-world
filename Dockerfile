# Pull base image 
From tomcat:8-jre8 
Expose 8080
ADD  $(agent.builddirectory)/webapp.war webapp.war
ENTRYPOINT ["java, ".war", "/webapp.war" ]
