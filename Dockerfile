FROM openjdk:20-slim
WORKDIR /app
EXPOSE 8080


ARG JAR_FILE=target.nosync/sample-services-1.0.0.jar

ADD ${JAR_FILE} ./app.jar

ENTRYPOINT ["java","-jar","/app/app.jar"]
