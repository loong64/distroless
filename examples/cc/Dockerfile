FROM gcc:6 AS build-env
COPY . /app
WORKDIR /app
RUN cc hello.c -o hello

FROM gcr.io/loong64/cc
COPY --from=build-env /app /app
WORKDIR /app
CMD ["./hello"]
