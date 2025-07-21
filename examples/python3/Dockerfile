FROM python:3-slim AS build-env
COPY . /app
WORKDIR /app

FROM gcr.io/loong64/python3
COPY --from=build-env /app /app
WORKDIR /app
CMD ["hello.py", "/etc"]
