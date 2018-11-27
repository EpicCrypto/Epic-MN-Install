#/bin/bash

cd ~
cd /usr/local/bin
./epic-cli stop
rm -rf epicd epic-cli epic-tx
wget https://github.com/EpicCrypto/Epic/releases/download/2.1.0/epic-2.1.0-x86_64-linux-gnu.tar.gz
tar -xzf epic-2.1.0-x86_64-linux-gnu.tar.gz
rm -rf epic-2.1.0-x86_64-linux-gnu.tar.gz
./epicd -daemon
sleep 5
./epic-cli getinfo
