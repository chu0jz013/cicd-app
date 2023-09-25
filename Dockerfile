FROM maven:3.6.3-openjdk-11 as builder

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

FROM openjdk:11-jdk

WORKDIR /app

COPY --from=builder /app/target/demo-0.0.1-SNAPSHOT.jar ./demo-0.0.1-SNAPSHOT.jar

EXPOSE 8080

CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
