FROM ubuntu:18.04

WORKDIR /app
COPY frontend-example-docker frontend-example-docker
RUN apt update && apt install -y curl && curl -sL https://deb.nodesource.com/setup_10.x | bash && apt install -y nodejs
ENV API_URL=http://localhost:8000
RUN cd frontend-example-docker && npm install
CMD cd frontend-example-docker && npm start
