FROM registry.access.redhat.com/ubi8/openjdk-11:1.11-2
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
