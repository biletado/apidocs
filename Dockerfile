FROM swaggerapi/swagger-ui:v4.6.2

COPY ./public/ /usr/share/nginx/html/

ENV CONFIG_URL "./swagger-config.json"

# workaround for https://github.com/swagger-api/swagger-ui/issues/7915
COPY docker-entrypoint.d/ docker-entrypoint.d/
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 8080
