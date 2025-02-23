FROM maven:3.9.6-eclipse-temurin-21-alpine AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn package -DskipTests

FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

COPY --from=build /app/target/login_base-0.0.1-SNAPSHOT.jar /app/login_base.jar

RUN apk add --no-cache bash

COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

EXPOSE 8080

CMD /wait-for-it.sh mysql:3306 -- java -jar /app/login_base.jar
