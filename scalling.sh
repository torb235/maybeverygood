{cd /tailscale && ./tailscaled --tun=userspace-networking --outbound-http-proxy-listen=localhost:1055 & ./tailscale up --authkey=${TAILSCALE_AUTHKEY}
HTTP_PROXY=http://localhost:8055/} &> /dev/null

