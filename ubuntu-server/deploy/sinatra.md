# Deploy Sinatra App From Scratch


## Set up capistrano

gem 'capistrano'
bundle exec cap install

### Run ssh agent

#### Cap

??(ez ugylatszik default) set :ssh_options, { :forward_agent => true }

#### CLI

eval `ssh-agent`
ssh-add ~/.ssh/id_rsa

test: ssh to_my_server then ssh github@github.com


#### It could be usefull

bundle install --without test development
unicorn -c unicorn.rb -D
service nginx restart