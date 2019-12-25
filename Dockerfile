FROM alpine:3.10

# Install OPA.
ARG OPA_VERSION=0.15.1
RUN wget -O '/bin/opa' \
        "https://github.com/open-policy-agent/opa/releases/download/v${OPA_VERSION}/opa_linux_amd64" &&\
    chmod +x '/bin/opa'

# Set up entrypoint.
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
