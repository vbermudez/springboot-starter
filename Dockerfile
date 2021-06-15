FROM maven:3.6.3-openjdk-8-slim

LABEL maintainer="vbermudez@outlook.es"

RUN mkdir -p /usr/local/app
WORKDIR /usr/local/app

ENTRYPOINT ["mvn"]

COPY . .
RUN mvn install -B -T1C && mvn clean




