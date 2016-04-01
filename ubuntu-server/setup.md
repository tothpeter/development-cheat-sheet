#Resources
http://robmclarty.com/blog/how-to-setup-a-production-server-for-rails-4

sudo apt-get install curl git build-essential

#SSH
__GEN__
ssh-keygen -t rsa
__COPY__
cat ~/.ssh/id_rsa.pub | ssh toma@192.168.0.200 'cat - >> ~/.ssh/authorized_keys'
sudo chmod 600 ~/.ssh/authorized_keys && chmod 700 ~/.ssh/


# Ruby
?? echo gem: --no-document > ~/.gemrc
or you can add this line to the global gemrc config file. Here is how to find it (in Linux)
strace gem source 2>&1 | grep gemrc

#MySQL
(Kell mysql2 gem-hez)
apt-get install -y libmysqlclient-dev


// Nokogiri installation fails -libxml2 is missing
//? sudo apt-get install libxslt-dev libxml2-dev
//? sudo apt-get install build-essential

sudo apt-get install mysql-server


mysql -u root -p PASSWORD

create database billdb;

##Create user

grant all privileges on billdb.* to 'billdb_usr'@'localhost' identified by 'a-super-strong-password';
flush privileges;