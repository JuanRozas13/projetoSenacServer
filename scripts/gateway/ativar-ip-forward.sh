# Ativar roteamento
cd etc/network/interface

# A interface loopback (padrão, não mexa)
auto lo
iface lo inet loopback

# Sua interface principal (ex: eth0 ou enp0s3)
auto enp0s3
iface enp0s3 inet static
    address 192.168.1.12
    netmask 255.255.255.192
    gateway 192.168.1.1
    dns-nameservers 8.8.8.8 1.1.1.1