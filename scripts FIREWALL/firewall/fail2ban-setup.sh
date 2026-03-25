# Instalar Fail2ban
apt update
apt install fail2ban -y

systemctl status fail2ban

cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.conf.bkp

vim /etc/fail2ban/jail.conf.bkp

# procurar por essa configuração e adicionar as seguintes linhas:
[DEFAULT]
backend = systemd
bantime = 300
findtime = 300
maxretry = 3

[sshd]
enabled = true




# salvar o arquivo e sair do editor

systemctl restart fail2ban

fail2ban-client status 

fail2ban-client status sshd

# para desbloquear um IP específico, use o seguinte comando
fail2ban-client set sshd unbanip SEU_IP

# ver logs do fail2ban
tail -f /var/log/fail2ban.log



# Exemplo de log do fail2ban mostrando tentativas de login e banimento:

# 2026-03-24 21:45:14,337 fail2ban.filter         [5755]: INFO    [sshd] Found 192.168.20.101 - 2026-03-24 21:45:13
# 2026-03-24 21:45:21,294 fail2ban.filter         [5755]: INFO    [sshd] Found 192.168.20.101 - 2026-03-24 21:45:21
# 2026-03-24 21:45:27,589 fail2ban.filter         [5755]: INFO    [sshd] Found 192.168.20.101 - 2026-03-24 21:45:27
# 2026-03-24 21:45:27,727 fail2ban.actions        [5755]: NOTICE  [sshd] Ban 192.168.20.101
