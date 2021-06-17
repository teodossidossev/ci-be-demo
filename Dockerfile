FROM openjdk:8-jdk-alpine
RUN apk add --no-cache maven
WORKDIR /app
COPY . .
RUN mvn clean install
ENTRYPOINT [ "java -jar target/demo-0.0.1-SNAPSHOT.jar" ]

EXPOSE 8888
