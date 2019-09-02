FROM maven:3-jdk-8
RUN git clone https://github.com/up1/maven_java_web_example.git
WORKDIR /app_example
RUN mvn clean package
ENV APP_NAME=app_example
EXPOSE 8080
WORKDIR /app_example/target
ENTRYPOINT exec java -jar api.war

