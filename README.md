bash -c "$(curl -sL https://github.com/igorezka/pg-node/raw/main/install.sh)"

nano /etc/ufw/before.rules
icmp INPUT раздел
-A ufw-before-input -p icmp --icmp-type source-quench -j DROP
