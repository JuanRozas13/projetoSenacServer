# 🚀 Sistema de Ordem de Serviço (IFixTec)

## 📌 Sobre o Projeto

Este projeto consiste em um sistema de **Ordem de Serviço (OS)** desenvolvido em **Java**, voltado para uma assistência técnica.

O sistema permite o cadastro de clientes, registro de defeitos e gerenciamento de atendimentos, com armazenamento centralizado em banco de dados.

---

## 🏗️ Arquitetura do Projeto

O ambiente foi estruturado seguindo boas práticas de infraestrutura:

```
[Usuário/Técnico]
        ↓
[Aplicação Java (Desktop)]
        ↓
[Servidor de Banco de Dados]
        ↓
[MySQL]
```

---

## 🧰 Tecnologias Utilizadas

* ☕ Java 8 (JDK)
* 🗄️ MySQL Server
* 🧪 MySQL Workbench
* 🔐 Linux (Servidor de Banco)
* 🛡️ Linux (Servidor Firewall)
* 🖥️ Windows Server (AD + Script de Logon)
* 🔄 Git / GitHub

---

## ⚙️ Funcionalidades

* Cadastro de clientes
* Registro de defeitos
* Controle de ordens de serviço
* Integração com banco de dados
* Acesso via múltiplas máquinas na rede

---

### 📍 Banco de Dados (MySQL)

1. Instalar o MySQL Server

sudo apt update
sudo apt install mysql-server -y

systemctl status mysql

sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf

```trocar de```
bind-address = 127.0.0.1

```para```
bind-address = 0.0.0.0

sudo systemctl restart mysql

2. Criar usuário:
    
sudo mysql

create user 'dba'@'%' identified by '123@Senac';
grant all privileges on *.* to 'dba'@'%';
flush privileges;

---

### 🌐 Rede

* Porta utilizada: **3306 (MySQL)**
* Liberação feita via firewall (iptables)

---

## 📊 Boas Práticas Aplicadas

* Separação de serviços (Banco ≠ Aplicação)
* Centralização do banco de dados
* Controle de acesso por rede
* Padronização de ambiente

---

## 👨‍💻 Autor
Juan Rozas
Erivelton Teixeira
Diego Fernandes
Jhoseline

Projeto desenvolvido para fins educacionais e prática de infraestrutura, redes e integração de sistemas.

---

## 📌 Observações

Este projeto simula um ambiente corporativo real, envolvendo:

* Servidor firewall
* Servidor de banco de dados
* Controle de rede
* Aplicação integrada

---

## ⭐ Conclusão

Este sistema demonstra a integração entre desenvolvimento e infraestrutura, garantindo um ambiente funcional, seguro e organizado para utilização em rede.

---
