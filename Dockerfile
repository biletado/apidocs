FROM swaggerapi/swagger-ui:v4.15.2

COPY ./public/ /usr/share/nginx/html/

ENV CONFIG_URL "./swagger-config.json"

EXPOSE 8080
