#!/bin/sh

ufw enable && ufw allow OpenSSH
ufw allow 62050,62051/tcp


read -p "Открыть доп. порт? [y/n]: " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Введите номер порта:"
    read port
    ufw allow $port
fi

sudo bash -c "$(curl -sL https://github.com/PasarGuard/scripts/raw/main/pg-node.sh)" @ install

