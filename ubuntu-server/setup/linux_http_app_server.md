$ sudo passwd root
$ su -

$ apt-get update
$ apt-get upgrade

## Optional
```
$ sudo dpkg-reconfigure tzdata
$ apt-get -y install telnet postfix
```

$ apt-get install curl git-core build-essential python-software-properties nodejs -y

## SSH
### Generation (optional)
$ ssh-keygen -t rsa -C "tothpeter08@gmail.com"
### Copy
$ cat ~/.ssh/id_rsa.pub | ssh toma@192.168.0.200 'cat - >> ~/.ssh/authorized_keys'
$ chmod 600 ~/.ssh/authorized_keys && chmod 700 ~/.ssh/

### Config
$ vi /etc/ssh/sshd_config
```
Port 25000
Protocol 2
PermitRootLogin no
UseDNS no
```

$ service ssh restart
__OR__
$ reload ssh

#### Test
ssh -p 25000 demo@123.45.67.890

## Deployer user

$ addgroup admin
$ adduser deployer --ingroup admin


## Nginx

### Install

$ add-apt-repository ppa:nginx/stable 
$ apt-get update
$ apt-get install nginx -y
$ service nginx start

### Set up WWW folder
$ cd /var

$ chown -R deployer:admin www
__OR__
$ chgrp -R admin www

$ chmod -R g+rwxs www

### Config
$ vi /etc/nginx/sites-available/kalina.technology
```
server {
  listen 80;
  server_name kalina.technology www.kalina.technology;
  access_log /var/www/kalina.technology/access.log;

  root /var/www/kalina.technology;
}
```
$ cd /etc/nginx/sites-enabled
$ ln -s /etc/nginx/sites-available/kalina.technology kalina.technology
$ service nginx restart

### Debug
tail -f /var/log/nginx/error.log


## Problems and solutions:
- apt-get update
  - W: Some index files failed to download. They have been ignored, or old ones used instead.
    - edit hu to en
    - $ vi /etc/apt/sources.list

## Ruby
$ sudo apt-get install libffi-dev zlib1g-dev libcurl4-openssl-dev -y
$ git clone git://github.com/sstephenson/rbenv.git /usr/local/rbenv
$ chgrp -R admin rbenv
$ chmod -R g+rwxXs rbenv
$ vi /etc/skel/.profile
$ vi ~/.profile

```
export RBENV_ROOT=/usr/local/rbenv
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"
```

$ mkdir /usr/local/rbenv/plugins
$ git clone git://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build
$ rbenv install --list
$ rbenv install 2.2.1
$ rbenv global 2.2.1

$ echo "gem: --no-ri --no-rdoc" > ~/.gemrc
$ gem install bundler

$ reboot

## Git
$ git config --global color.ui true
``` -- nem csinaltam meg de nem arthat
git config --global user.name "YOUR NAME"
git config --global user.email "YOUR@EMAIL.com"
ssh-keygen -t rsa -C "YOUR@EMAIL.com"
```

## Postgres

## Rails

vi /etc/environment
```
export RACK_ENV=production
export RAILS_ENV=production

PATH="/usr/local/rbenv/shims:/usr/local/rbenv/bin: ...
```

## Bundler
bundle install --without development test

## Database
rake db:create