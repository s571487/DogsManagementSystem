FROM maven:3-eclipse-temurin-17 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests
FROM eclipse-temurin:17-alpine
COPY --from=build /target/DogsManagementSystem-0.0.1-SNAPSHOT.jar
DogsManagementSystem.jar
EXPOSE 8080
CMD ["java", "-jar", "DogsManagementSystem.jar"]
8. Create a new repository in GitHub with your preferred name. Using the commands for
pushing code for existing repository push the DogsManagementSystem code into
repository.
9. Now in render click on new and select web service. Connect to your newly repository.
10. Once the build is success. It will generate link, open it and recheck all functionalities.
