FROM nginx:1.27.2-alpine

WORKDIR /app
COPY ./index.html /app
COPY ./drawio/src/main/webapp /app/public
COPY nginx.conf /etc/nginx/templates/default.conf.template

EXPOSE 9999
