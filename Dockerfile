FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:21-slim
WORKDIR /app
COPY --from=build /app/target/filmcritic-0.0.1-SNAPSHOT.jar filmcritic.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "filmcritic.jar"]
