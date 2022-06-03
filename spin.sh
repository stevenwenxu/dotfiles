status() {
  systemctl status proc-shopify--shopify@server.service
}

logs() {
  journalctl -fu proc-shopify--shopify@server.service
}

stop() {
  systemctl stop proc-shopify--shopify@server.service
}

restart() {
  systemctl restart proc-shopify--shopify@server.service
}

server() {
  /opt/spin/bin/procfile-exec server
}

worker() {
  /opt/spin/bin/procfile-exec worker
}

update_bundle() {
  bundle config --global PKGS__SHOPIFY__IO "token:$(gsutil cat gs://dev-tokens/cloudsmith/shopify/gems/latest)"
}

export BUILDKITE_TOKEN="$(cat /etc/spin/secrets/buildkite)"
