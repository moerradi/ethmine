wget https://github.com/nanopool/nanominer/releases/download/3.3.4/nanominer-linux-3.3.4.tar.gz
tar -xvf nanominer-linux-3.3.4.tar.gz
cd nanominer-linux-3.3.4
cp ../config.temp .
mv config.temp config.ini
./nanopool& > /var/null