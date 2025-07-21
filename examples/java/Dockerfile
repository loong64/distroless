FROM openjdk:17-jdk-slim AS build-env
COPY . /app/examples
WORKDIR /app
RUN javac examples/*.java
RUN jar cfe main.jar examples.HelloJava examples/*.class 

FROM gcr.io/loong64/java17-debian13
COPY --from=build-env /app /app
WORKDIR /app
CMD ["main.jar"]
