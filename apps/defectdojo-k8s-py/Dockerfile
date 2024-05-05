FROM python:3.12

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN pip install git+https://github.com/kubernetes-client/python.git
RUN pip install git+https://github.com/DefectDojo/defectdojo_api.git

COPY ./apps/defectdojo-k8s-py/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/bash", "--"]
CMD ["/entrypoint.sh"]
