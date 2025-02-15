# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target folder
COPY target/BookApplication-0.0.1-SNAPSHOT.jar app.jar

# Expose the application's port (adjust if needed)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
