FROM ubuntu:18.04

WORKDIR /app
COPY frontend-example-docker frontend-example-docker
RUN apt-get update && apt-get install -y curl && curl -sL https://deb.nodesource.com/setup_10.x | bash && apt-get install -y nodejs && apt-get purge -y --auto-remove curl && rm -rf /var/lib/apt/lists/* && useradd -m abc && chown -R abc /app
USER abc
RUN cd frontend-example-docker && npm install
CMD cd frontend-example-docker && npm start
