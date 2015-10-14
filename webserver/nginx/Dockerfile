FROM nginx
MAINTAINER Karl Fathi <karl@pixelfordinner.com>

ENV LANG C.UTF-8

RUN rm /etc/nginx/nginx.conf && \
    rm /etc/nginx/fastcgi_params && \
    rm -rf /etc/nginx/conf.d && \
    mkdir -p /etc/nginx/vhost && \
    mkdir -p /opt/www

COPY data/conf.d /etc/nginx/conf.d
COPY data/nginx.conf /etc/nginx/
COPY data/fastcgi_params /etc/nginx/
COPY data/mime.types /etc/nginx/
COPY data/dhparam.pem /etc/nginx/

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

CMD ["nginx"]
