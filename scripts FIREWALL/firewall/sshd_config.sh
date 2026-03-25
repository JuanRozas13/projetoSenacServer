cd /etc/ssh
nano sshd_config

# procurar por essa linha e descomentar (remover o #) ou adicionar a linha se ela não existir:

# descomentar
MaxSessions 2

# adicionar
MaxStartups 2

