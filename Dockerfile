FROM swaggerapi/swagger-ui:v4.6.2

RUN apk --no-cache add yq

COPY ./public/ /usr/share/nginx/html/

ENV CONFIG_URL "./swagger-config.json"

# workaround for https://github.com/swagger-api/swagger-ui/issues/7915
COPY docker-entrypoint.d/ docker-entrypoint.d/
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 8080
