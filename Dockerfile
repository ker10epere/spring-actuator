FROM maven:3.9.6-eclipse-temurin-17-alpine as build

COPY . /opt/webapp/

RUN mvn clean package -f /opt/webapp/


FROM eclipse-temurin:17-jre-alpine

COPY --from=build /opt/webapp/target/webapp.jar /opt/apps/webapp.jar

ENTRYPOINT java -jar /opt/apps/webapp.jar

