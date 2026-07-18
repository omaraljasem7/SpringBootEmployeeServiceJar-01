# First I do need java ,for that search for that java version , that you want
# Java Image for java 25 jdk , because our jar is using java version 25
FROM eclipse-temurin:25-jdk-alpine-3.23
# copy the jar to the container and name it to app.jar
COPY target/employee-service-0.0.1-SNAPSHOT.jar app.jar
# run the jar
ENTRYPOINT ["java","-jar","app.jar"]

# go the path where you find the Dockerfile
## use then docker build . -t employee-service:v1
# This is to build the image from the Docker file, employee-service is the name of the image
# :v1 tag of the image


## After Building a new image will be creaetd
# see images.md
