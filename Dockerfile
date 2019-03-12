FROM docker:stable-git
RUN apk update && apk add --no-cache py2-pip build-base python2-dev libffi-dev openssl-dev && pip install --no-cache-dir docker-compose=1.24.0rc1
