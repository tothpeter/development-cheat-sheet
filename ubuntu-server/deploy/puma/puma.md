# Deploy Sinatra App From Scratch


https://www.digitalocean.com/community/tutorials/how-to-deploy-a-rails-app-with-puma-and-nginx-on-ubuntu-14-04

gem 'puma'

### Start puma
bundle exec puma -C config/puma.rb

-- or

start puma app=/var/www/type_and_learn_api/current
start puma-manager
stop puma-manager
restart puma-manager

### Error tracking

cat /var/log/upstart/puma-_var_www_type_and_learn_api_current.log

### Run ssh agent

#### CLI

eval `ssh-agent`
ssh-add ~/.ssh/id_rsa

test: ssh to_my_server then ssh github@github.com

### Start puma on system boot


puma.conf
puma-manager.conf


#### It could be usefull

bundle install --without test development
service nginx restart