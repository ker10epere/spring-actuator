FROM maven:3.9.6-eclipse-temurin-17-alpine

COPY . /opt/webapp/

RUN mvn clean package -f /opt/webapp/

ENTRYPOINT java -jar /opt/webapp/target/webapp.jar

