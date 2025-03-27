# caddy-with-transform-encoder

Docker image of Caddy 2.0 with the following included modules:

- transform-encoder
- Cloudflare DNS
- Caddy security

Mainly intended to be paired with fail2ban for analyzing logs to IP ban on desired behaviors (i.e. numerous HTTP 401s/403s)
