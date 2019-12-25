FROM alpine:3.10
COPY entrypoint.sh /entrypoint.sh

# Install OPA.
ARG OPA_VERSION=0.15.1
RUN wget -O '/usr/local/bin/opa' \
        "https://github.com/open-policy-agent/opa/releases/download/v${OPA_VERSION}/opa_linux_amd64" &&\
    chmod +x '/usr/local/bin/opa'

ENTRYPOINT ["/entrypoint.sh"]
