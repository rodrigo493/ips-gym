#!/bin/bash
# Deploy ipsbiomecanic.liveuni.com.br
# Rodar na VPS como root

set -e

DEPLOY_DIR="/opt/ips-gym"

echo "=== Deploy IPS Gym Landing ==="

mkdir -p $DEPLOY_DIR
cd $DEPLOY_DIR

# Se repo já existe, só puxa. Senão clona.
if [ -d ".git" ]; then
  git pull
else
  git clone https://github.com/rodrigo493/ips-gym.git .
fi

echo "--- Build Docker image ---"
docker build -t ips-gym:latest .

echo "--- Deploy stack ---"
docker stack deploy -c deploy/ips-gym-stack.yml ips-gym

echo "--- Status ---"
sleep 3
docker service ps ips-gym_ips-gym

echo ""
echo "=== Pronto! ==="
echo "https://ipsbiomecanic.liveuni.com.br"
