FROM node:10

WORKDIR /app
COPY backend-example-docker backend-example-docker
RUN useradd -m abc && chown -R abc /app
USER abc
ENV FRONT_URL=http://localhost:5000
CMD cd backend-example-docker && npm install && npm start
