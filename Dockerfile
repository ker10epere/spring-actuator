FROM maven:eclipse-temurin@sha256:a263660b3f2d89af528c9344856121ec26d21e97f09c3f70bf823a3ae5d9c8b1

COPY . /opt/webapp/

RUN mvn clean package -f /opt/webapp/

ENTRYPOINT java -jar /opt/webapp/target/webapp.jar

