FROM nginx:alpine

LABEL Description="Dockerize reactjs with base image nginx alpine"

WORKDIR /usr/share/nginx/html

RUN rm -rf *

RUN chown nginx: ./*

COPY ./nginx.conf /etc/nginx/conf.d

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
