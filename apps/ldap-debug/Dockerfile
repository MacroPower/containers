FROM debian:bookworm-slim

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apt-get update && apt-get install -y \
  ldap-utils \
  && rm -rf /var/lib/apt/lists/*

COPY ./apps/ldap-debug/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/sh", "--"]
CMD ["/entrypoint.sh"]
