#!/bin/bash
echo "🚀 Iniciando instalação do Docker..."

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Aguarda token
echo "Aguardando token Docker Swarm..."
timeout=60
elapsed=0
while [ ! -f /vagrant/worker_token.txt ]; do
  sleep 2
  elapsed=$((elapsed + 2))
  [ $elapsed -ge $timeout ] && echo "❌ Tempo limite atingido ao esperar o token." && exit
done

token=$(cat /vagrant/worker_token.txt)
docker swarm join --token "$token" 192.168.56.160:2377
echo "🎉 Worker conectado ao Swarm com sucesso!"