# Use a base image, such as AdoptOpenJDK's OpenJDK image
FROM amazoncorretto:17

# Set a working directory within the container
WORKDIR /app

# Copy the JAR file from the host to the container's working directory
COPY target/*.jar /app/app.jar

# Expose the port that the Spring Boot application will run on
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
