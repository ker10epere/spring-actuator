FROM maven:3.9.6-eclipse-temurin-17-alpine@sha256:ffddac7b04101358048f872fba9d978b2a1f9647955d158c1e565233cb95577d

COPY . /opt/webapp/

RUN mvn clean package -f /opt/webapp/

ENTRYPOINT java -jar /opt/webapp/target/webapp.jar

