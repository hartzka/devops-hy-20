FROM node:10

WORKDIR /app
COPY frontend-example-docker frontend-example-docker
RUN useradd -m abc && chown -R abc /app
USER abc
RUN cd frontend-example-docker && npm install
CMD cd frontend-example-docker && npm start
