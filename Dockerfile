FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf
COPY server.conf /etc/nginx/templates/server.conf.template
