cd /etc
ls sysctl.*
nano sysctl.conf

# Filtragem de caminho reverso
net.ipv4.conf.all.rp_filter=2

net.ipv4.tcp_syncookies=1

net.ipv4.conf.all.accept_redirects = 0

net.ipv4.conf.all.accept_source_route = 0

# ctrl + o
# enter
# ctrl + x

/usr/sbin/sysctl --system