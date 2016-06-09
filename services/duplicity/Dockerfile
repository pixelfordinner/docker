FROM alpine
MAINTAINER Karl Fathi <karl@pixelfordinner.com>

# https://hub.docker.com/r/wernight/duplicity/~/dockerfile/

RUN adduser -D -u 1896 duplicity && \
    chmod -R go+rwx /home/duplicity/

RUN apk add --no-cache --update duplicity openssh openssl py-crypto py-pip rsync
RUN pip install pydrive==1.0.1
RUN apk del --purge py-pip

ENV HOME=/home/duplicity

VOLUME /home/duplicity/

USER duplicity

CMD ["duplicity"]
