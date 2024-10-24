# Dockerfile for building a custom Docker image
FROM cepgbaseacr.azurecr.io/docker.io/openjdk:17-slim

# Set the working directory
WORKDIR /app

# Copy the application JAR file to the container
COPY target/myapp.jar /app/myapp.jar

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "/app/myapp.jar"]
