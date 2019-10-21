FROM docker:stable-git
RUN apk add --update --no-cache py3-pip && \
    apk add --update --no-cache --virtual .build-deps build-base python3-dev libffi-dev openssl-dev && \
    pip3 install --no-cache-dir docker-compose && \
    apk del .build-deps
