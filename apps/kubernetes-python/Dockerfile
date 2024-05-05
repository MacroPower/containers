FROM python:3.12-alpine

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN pip install git+https://github.com/kubernetes-client/python.git
RUN pip install requests

COPY ./apps/kubernetes-python/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/bash", "--"]
CMD ["/entrypoint.sh"]
