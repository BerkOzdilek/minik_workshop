FROM openjdk:11-jre-slim

COPY build/libs .

CMD ["java", "-XX:MaxRAMPercentage=75", "-Djava.security.egd=file:/dev/./urandom", "-jar", "backend-service-0.0.1-SNAPSHOT.jar"]
