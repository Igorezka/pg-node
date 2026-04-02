#!/bin/sh

ufw enable && ufw allow OpenSSH

read -p "Открыть доп. порт? [y/n]: " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Введите номер порта:"
    read port
    ufw allow $port
fi

# nano /etc/ufw/before.rules
# icmp INPUT раздел
# -A ufw-before-input -p icmp --icmp-type source-quench -j DROP

sudo bash -c "$(curl -sL https://github.com/PasarGuard/scripts/raw/main/pg-node.sh)" @ install

