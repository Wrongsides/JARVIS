docker run --name ovpn-data -v /etc/openvpn busybox:latest
docker run --volumes-from ovpn-data --rm wrongsides/openvpn ovpn_genconfig -u udp://jarvis-server.duckdns.org:1194
docker run --volumes-from ovpn-data --rm -it wrongsides/openvpn ovpn_initpki
docker run --volumes-from ovpn-data -d -p 1194:1194/udp --name=openvpn --cap-add=NET_ADMIN wrongsides/openvpn
