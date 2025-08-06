#!/bin/bash
echo "Configurando Docker Master..."

# Instalação do Docker
echo "🚀 Iniciando instalação do Docker..."
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Inicializa o Swarm
docker swarm init --advertise-addr 192.168.56.160

# Salva token para os workers
docker swarm join-token worker -q > /vagrant/worker_token.txt
echo "✨ Master configurado com sucesso!"
