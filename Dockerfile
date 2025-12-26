FROM caddy:2-builder-alpine AS builder

RUN xcaddy build \
  --with github.com/caddyserver/transform-encoder \
  --with github.com/caddy-dns/cloudflare \
  --with github.com/greenpau/caddy-security \
  --replace github.com/quic-go/quic-go@v0.54.0=github.com/quic-go/quic-go@v0.54.1

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
