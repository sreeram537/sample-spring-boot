FROM openjdk:8u212-alpine

LABEL name "sample-spring-boot" 
LABEL maintainer "Cognizant"
LABEL version=1.0

ARG JAR_FILE=build/libs/*.jar
USER root

ENV APP_LOC="/usr/src/app"

WORKDIR $APP_LOC

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
