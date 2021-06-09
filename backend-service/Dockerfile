# build environment
FROM gradle:6.8.3-jdk11 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

# production environment
FROM openjdk:11-jre-slim
COPY --from=build /home/gradle/src/build/libs/*0.0.1-SNAPSHOT.jar /application.jar
EXPOSE 8080
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/application.jar"]