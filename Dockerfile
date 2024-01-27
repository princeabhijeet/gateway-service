FROM eclipse-temurin:17-jdk-jammy

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} gateway-service.jar

ENTRYPOINT [ "java", "-jar", "/gateway-service.jar" ]

EXPOSE 8443

#
# Build docker image:
# docker build -t springboot-microservices/gateway-service:0.0.1 .
# -t : tag info will be provided in command
# last . : find Dockerfile in current root folder to build docker image 

#
# See all images:
# docker images

#
# Run docker image:
# docker run -d -p8443:8443 --name gateway-service springboot-microservices/gateway-service:0.0.1
# docker run -d -p8443:8443 --net msnet --name gateway-service springboot-microservices/gateway-service:0.0.1
# -d : detatched mode
# -p : port information
# 8761:8761 : hostport:containerport
# --name : name of container
# last name/imageid : at last should be image name or image id

#
# see running images/containers
# docker ps -a
#

