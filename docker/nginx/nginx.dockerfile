FROM nginx:latest

ADD ./nginx-vhost.conf /etc/nginx/conf.d/default.conf
ADD ./cert.pem /etc/nginx/conf.d/cert.pem
ADD ./key.pem /etc/nginx/conf.d/key.pem