#!/bin/bash
cd /tailscale
./tailscaled --tun=userspace-networking --outbound-http-proxy-listen=localhost:1055 & ./tailscale up --authkey=${TAILSCALE_AUTHKEY} &> /dev/null
HTTP_PROXY=http://localhost:8055/
