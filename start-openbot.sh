#!/usr/bin/env bash
# Starts the OpenBot server in Docker inside this Codespace.
set -e
cd "$(dirname "$0")"
[ -f seccomp.json ] || curl -fsSLO https://raw.githubusercontent.com/nightly-labs/openbot/main/docker/seccomp.json
for i in $(seq 1 30); do docker info >/dev/null 2>&1 && break; sleep 2; done
if docker ps -a --format '{{.Names}}' | grep -qx openbot; then
  docker start openbot
else
  docker run -d --name openbot --restart unless-stopped \
    --security-opt seccomp=seccomp.json --security-opt no-new-privileges:true \
    --shm-size 1g --stop-timeout 60 \
    -v openbot-data:/data \
    ghcr.io/nightly-labs/openbot:latest
fi
echo "OpenBot is running. First time only, sign in with:  bash login.sh"
