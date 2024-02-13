# Use the official Java 11 base image from Docker Hub
FROM openjdk:11

# Set the working directory in the container
WORKDIR /app

# Copy the packaged Spring Boot application JAR file into the container
COPY target/springboot-maven-course-micro-svc-0.0.1-SNAPSHOT.jar app.jar

# Specify the command to run the Spring Boot application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
