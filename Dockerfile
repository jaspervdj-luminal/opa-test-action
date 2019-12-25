FROM alpine:3.10

# The OPA binaries are built against glibc; but the musl is binary compatible.
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

# Install OPA.
ARG OPA_VERSION=0.15.1
RUN wget -O '/usr/local/bin/opa' \
        "https://github.com/open-policy-agent/opa/releases/download/v${OPA_VERSION}/opa_linux_amd64" &&\
    chmod +x '/usr/local/bin/opa'

# Set up entrypoint.
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
