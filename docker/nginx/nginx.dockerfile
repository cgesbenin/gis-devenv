FROM nginx:latest

ADD ./nginx-vhost.conf /etc/nginx/conf.d/default.conf