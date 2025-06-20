FROM caddy:2-builder-alpine AS builder

RUN xcaddy build \
  --with github.com/caddyserver/transform-encoder \
  --with github.com/caddy-dns/cloudflare \
  --with github.com/greenpau/caddy-security

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
