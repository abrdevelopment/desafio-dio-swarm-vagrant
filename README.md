🐳 Desafio DIO - Swarm com Vagrant
Este projeto é parte de um desafio prático da Digital Innovation One (DIO), voltado à criação de um ambiente Docker Swarm usando Vagrant e VirtualBox. Ele permite o provisionamento rápido de múltiplas máquinas virtuais para simular um cluster Docker Swarm local.

🚀 Objetivo
Criar e configurar um cluster de contêineres com Docker Swarm de forma automatizada, usando Vagrant como orquestrador de VMs.

📦 Tecnologias Utilizadas
- Docker
- Docker Swarm
- Vagrant
- VirtualBox
- Shell Script

🛠 Estrutura do Projeto
desafio-dio-swarm-vagrant/
├── docker-swarm/
│   ├── instalacao-master.sh
│   ├── instalacao-worker.sh
├── Vagrantfile
└── README.md

⚙️ Como Utilizar
1. Clone o repositório
```bash
git clone https://github.com/abrdevelopment/desafio-dio-swarm-vagrant.git
cd desafio-dio-swarm-vagrant
```

2. Inicie o Vagrant
```bash
vagrant up
```

3. Conecte-se à máquina principal (Master)
```bash
vagrant ssh master
```

4. Verifique o estado do cluster Swarm (através da VM Master)
```bash
docker node ls
```

✅ Funcionalidades
- Provisionamento automático de 3 VMs (1 Manager + 2 Workers)
- Inicialização e união de nós ao cluster Docker Swarm
- Scripts de configuração automatizados
- Ambiente reprodutível e prático para testes locais (IaC)

📚 Referências
- Documentação do Docker Swarm (https://docs.docker.com/engine/swarm/  )
- Guia do Vagrant (https://developer.hashicorp.com/vagrant/docs)
- Curso DIO: Formação Docker Fundamentals

✍️ Autor
Feito por @abrdevelopment — sugestões e melhorias são bem-vindas!
