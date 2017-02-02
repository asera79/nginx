FROM nginx:alpine

MAINTAINER asera79@gmail.com

COPY simple.conf /etc/nginx/conf.d/simple.conf
COPY run.sh /etc/nginx

WORKDIR /etc/nginx
RUN chmod 0755 run.sh

ENTRYPOINT ./run.sh

