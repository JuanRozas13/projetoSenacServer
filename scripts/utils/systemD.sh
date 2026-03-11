#!/bin/bash
# config systemD
systemd -analyze

systemd-analyze blame

hostnamectl

systemctl

# VAsualizar o status do serviço ssh
systemctl status ssh.service

# Visualizar se ssh inicia junto com a servidor
systemctl is-enabled ssh.service

# Desligar o serviço ssh
systemctl stop ssh.service

# Desativa o ssh ao inicializar a servidor
systemctl disable ssh.service

# Reiniciar o servidor
systemctl reboot

# Ativar o serviço de ssh
systemctl start ssh.service

# Ativar o serviço ssh ao inicializar o servidor
systemctl enable ssh.service