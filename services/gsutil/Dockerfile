FROM alpine
MAINTAINER Karl Fathi <karl@pixelfordinner.com>

# https://hub.docker.com/r/camil/gsutil/~/dockerfile/

RUN apk add --no-cache --update \
    python \
    py-pip \
    py-cffi \
    py-cryptography

RUN pip install --upgrade pip

RUN apk add --virtual build-deps \
    gcc \
    libffi-dev \
    python-dev \
    linux-headers \
    musl-dev \
    openssl-dev

RUN pip install gsutil

RUN apk del build-deps
RUN rm -rf /var/cache/apk/*

CMD ["gsutil"]
