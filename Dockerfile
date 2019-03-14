FROM docker:stable-git
RUN apk add --update --no-cache py2-pip && \
    apk add --update --no-cache --virtual .build-deps build-base python2-dev libffi-dev openssl-dev && \
    pip install --no-cache-dir docker-compose==1.24.0rc1 && \
    apk del .build-deps
