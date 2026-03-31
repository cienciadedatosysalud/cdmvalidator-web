FROM nginx:alpine

RUN mkdir -p /usr/share/nginx/html/cdmvalidator-web

COPY ./docs /usr/share/nginx/html/cdmvalidator-web

RUN echo '<script>window.location.href="/cdmvalidator-web/"</script>' > /usr/share/nginx/html/index.html

EXPOSE 80
