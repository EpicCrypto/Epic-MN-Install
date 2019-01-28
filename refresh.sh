#/bin/bash

cd ~
cd /usr/local/bin
./epic-cli stop
rm -rf epicd epic-cli epic-tx
wget https://github.com/EpicCrypto/Epic/releases/download/2.2.1/epic-2.2.1-x86_64-linux-gnu.tar.gz
tar -xzf epic-2.2.1-x86_64-linux-gnu.tar.gz
rm -rf epic-2.2.1-x86_64-linux-gnu.tar.gz
./epicd -daemon
sleep 30
./epic-cli getinfo
