#!/bin/sh

ufw enable && ufw allow OpenSSH

read -p "Открыть доп. порт? [y/n]: " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Введите номер порта:"
    read port
    ufw allow $port
fi

sudo bash -c "$(curl -sL https://github.com/PasarGuard/scripts/raw/main/pg-node.sh)" @ install
