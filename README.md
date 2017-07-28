# starze/arm32v7-openvpn-client

Simple openvpn-client based on arm32v7/debian:latest for running on ARM-based computers like Raspberry Pi.

# Volumes
* Name your config file `client.ovpn` and connect it into the volume `/config/`

# start container
`docker run -d -v /docker/config/openvpn:/config --name openvpn-client --restart=unless-stopped --device=/dev/net/tun:/dev/net/tun --cap-add=NET_ADMIN --network=host openvpn-client starze/arm32v7-openvpn-client`

# build container
`docker build -t arm32v7-openvpn-client .`

# Dockerfile and Code
https://github.com/starze/arm32v7-openvpn-client
