FROM nginx:alpine

LABEL Description="Dockerize reactjs with base image nginx alpine"

WORKDIR /usr/share/nginx/html

RUN rm -rf *

COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
