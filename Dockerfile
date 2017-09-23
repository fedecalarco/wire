FROM openjdk:8-jre

MAINTAINER POC WIREMOCK "poc@wiremock.com"

RUN mkdir wiremock
WORKDIR /wiremock

COPY wiremock-standalone-2.7.1.jar /wiremock
COPY __files /wiremock/__files
COPY mappings /wiremock/mappings

EXPOSE 8080

CMD ["java", "-jar", "wiremock-standalone-2.7.1.jar"]
