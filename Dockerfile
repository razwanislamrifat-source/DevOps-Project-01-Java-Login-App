FROM eclipse-temurin:11-jre-focal

WORKDIR /app

# Copy the JAR file that Maven just built
COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
