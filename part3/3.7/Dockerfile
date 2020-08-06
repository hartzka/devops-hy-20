FROM node:10 as build-stage  
 
WORKDIR /app            
COPY frontend-example-docker frontend-example-docker
RUN cd frontend-example-docker && npm install       
CMD cd frontend-example-docker && npm start
RUN useradd -m abc && chown -R abc /app
USER abc 

FROM nginx
COPY --from=build-stage /app/ /usr/share/nginx/html
