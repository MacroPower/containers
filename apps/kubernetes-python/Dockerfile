FROM python:3.12-alpine

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk add --update-cache \
    git \
  && rm -rf /var/cache/apk/*

RUN pip install --no-cache-dir \
    git+https://github.com/kubernetes-client/python.git \
    requests

COPY ./apps/kubernetes-python/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/sh", "--"]
CMD ["/entrypoint.sh"]
