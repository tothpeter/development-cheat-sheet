## Install
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install tcl8.5

wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
make test
make install

cd utils
sudo ./install_server.sh

?? sudo update-rc.d redis_6379 defaults

## Usage
sudo service redis_6379 start
sudo service redis_6379 stop
6379