FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /opt/insurance-quote/
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17-jdk-slim
COPY --from=build /opt/insurance-quote/target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

