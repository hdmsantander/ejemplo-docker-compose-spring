FROM nginx:1.18.0-alpine

ENV DIST_FOLDER=dist/frontend
ENV NGINX_CONFIG=.nginx/default.conf

COPY ${NGINX_CONFIG} /etc/nginx/conf.d/default.conf
COPY ${DIST_FOLDER} /usr/share/nginx/html
RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80