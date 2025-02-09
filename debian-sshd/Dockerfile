FROM debian:12
RUN apt-get update && apt-get install -y \
    --no-install-recommends \
    iputils-ping \
    openssh-server \
    bind9-dnsutils \
    curl \
    ca-certificates \
    procps \
    telnet && rm -rf /var/lib/apt/lists/*
LABEL org.opencontainers.image.authors="tomwei7<tomwei7g@gmail.com>" \
    org.opencontainers.image.url="https://github.com/tomwei7/docker-images"
COPY entrypoint.sh /entrypoint.sh
EXPOSE 22
ENTRYPOINT ["/entrypoint.sh"]
