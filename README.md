# projetoSenacServer
Repositório destinado ao versionamento dos códigos utilizados na criação e configuração de um servidor Debian com função de firewall, responsável por distribuir e controlar o acesso à internet para outras instâncias da infraestrutura.


seu-projeto-firewall/
│
├── README.md                          # Visão geral do projeto
├── CHANGELOG.md                       # Histórico de mudanças
│
├── docs/
│   ├── ARQUITETURA.md                # Diagrama da rede
│   ├── FIREWALL.md                   # Guia de ferramentas firewall
│   ├── SUBNETTING.md                 # Configuração de redes
│   ├── WINDOWS_SYSADMIN.md           # Configuração Windows
│   ├── DEBIAN_WEB_DBA.md             # Configuração Debian Web/DBA
│   └── INSTALACAO.md                 # Passo a passo
│
├── scripts/
│   ├── firewall/
│   │   ├── configurar-iptables.sh    # Regras de firewall
│   │   ├── configurar-nat.sh         # Configurar roteamento
│   │   ├── bloquear-sites.sh         # Filtro de URLs
│   │   ├── fail2ban-setup.sh         # Instalar Fail2ban
│   │   └── limpar-firewall.sh        # Resetar tudo
│   │
│   ├── gateway/
│   │   ├── configurar-gateway.sh     # Interfaces de rede
│   │   ├── ativar-ip-forward.sh      # Ativar roteamento
│   │   └── testar-conectividade.sh  # Validar configurações
│   │
│   ├── utils/
│   │   ├── backup-regras.sh          # Fazer backup
│   │   ├── restaurar-regras.sh       # Restaurar backup
│   │   └── validar-sintaxe.sh        # Validar scripts
│   │
│   └── testes/
│       ├── teste-firewall.sh         # Testar regras
│       ├── teste-ping.sh             # Testar conectividade
│       └── teste-bloqueio-sites.sh  # Testar filtro
│
├── .github/workflows/
│   ├── validate-scripts.yml          # CI: Validar sintaxe bash
│   ├── security-check.yml            # CI: Verificar segurança
│   └── format-check.yml              # CI: Padronizar formato
│
├── config/
│   ├── iptables-rules.conf           # Regras base
│   ├── fail2ban-local.conf           # Configuração Fail2ban
│   └── blocked-sites.txt             # Lista de sites bloqueados
│
├── logs/
│   ├── firewall-rules.log            # Log das regras aplicadas
│   └── fail2ban-log.log              # Log de bloqueios
│
├── .gitignore
└── CONTRIBUINDO.md                    # Guia para contribuidores