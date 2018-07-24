FROM openjdk:8-jre
COPY ./target/*.jar /opt/
#RUN ls -la /opt
