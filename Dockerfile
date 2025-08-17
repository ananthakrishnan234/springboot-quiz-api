# Use Maven + JDK to build the project
FROM maven:3.9.2-eclipse-temurin-17 AS build

WORKDIR /app

# Copy all files to container
COPY . .

# Build the project and package the jar
RUN mvn clean package -DskipTests

# Use lightweight JDK image for running
FROM openjdk:17-jdk-slim

# Copy the JAR from the build stage
COPY --from=build /app/target/Quizapp-0.0.1-SNAPSHOT.jar app.jar

# Run the jar
ENTRYPOINT ["java","-jar","/app.jar"]
