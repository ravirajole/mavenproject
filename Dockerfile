#deploy JAVA app tomcat jboss weblogic windows-iss 
FROM tomcat:jdk21

LABEL   author=ravirajole

ENV APPPORT 8080
ENV DESTPATH /usr/local/tomcat/webapps/
#RUN --base image has already jdk so no need any installation

COPY sample.war $DESTPATH
EXPOSE $APPPORT
CMD ["catalina.sh","run"]