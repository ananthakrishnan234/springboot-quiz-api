# Use official OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Argument for jar file
ARG JAR_FILE=Quizapp/target/Quizapp-0.0.1-SNAPSHOT.jar

# Copy the jar into the container
COPY ${JAR_FILE} app.jar

# Run the jar
ENTRYPOINT ["java","-jar","/app.jar"]