#!/bin/sh

ufw enable && ufw allow OpenSSH
ufw allow 62050/tcp && ufw allow 62051/tcp


read -p "Открыть доп. порт? [y/n]: " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Введите номер порта с указание протокола (port/tcp):"
    read port
    ufw allow $port
    echo "Открыт порт $port"
fi

sudo bash -c "$(curl -sL https://github.com/PasarGuard/scripts/raw/main/pg-node.sh)" @ install

