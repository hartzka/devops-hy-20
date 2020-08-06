FROM ubuntu:18.04 as build-stage

WORKDIR /app
COPY frontend-example-docker frontend-example-docker
RUN apt update && apt install -y curl && curl -sL https://deb.nodesource.com/setup_10.x | bash && apt install -y nodejs
RUN cd frontend-example-docker && npm install

FROM nginx
COPY --from=build-stage /app/ /usr/share/nginx/html
