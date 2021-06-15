FROM openjdk:8-jdk-alpine

LABEL maintainer="vbermudez@outlook.es"

RUN mkdir -p /usr/local/app
WORKDIR /usr/local/app

ENTRYPOINT ["mvn"]

COPY . .
RUN mvn install -B -T1C




