FROM arm32v7/debian:latest

LABEL org.opencontainers.image.authors="Daniel Starzmann <daniel@starze.de>"
LABEL org.opencontainers.image.url="https://github.com/starze/arm32v7-openvpn-client"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
    apt-get install -yq openvpn && \
    rm -rf /var/lib/apt/lists/* 

VOLUME /config

ENTRYPOINT ["/usr/sbin/openvpn"]
CMD ["--config", "/config/client.ovpn"]

