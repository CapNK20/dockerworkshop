# syntax=docker/dockerfile:1
FROM swaggerapi/swagger-ui

# This could also be done without building an image by mounting swagger files into a container based on swaggerapi/swagger-ui
COPY fooapi.swagger.yaml /usr/share/nginx/html/spec/
COPY barapi.swagger.yaml /usr/share/nginx/html/spec/

ENV URLS="[{url:\"http://localhost/swagger/spec/fooapi.swagger.yaml\",name:\"Foo api\"},{url:\"http://localhost/swagger/spec/barapi.swagger.yaml\",name:\"Bar api\"}]"
