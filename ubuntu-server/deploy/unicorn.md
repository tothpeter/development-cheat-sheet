# Setup unicorn

gem 'unicorn'

unicorn -c config/unicorn.rb -D

su
ln -nfs /var/www/type_and_learn_web/shared/config/unicorn_init.sh /etc/init.d/unicorn_type_and_learn_web
sudo service unicorn_type_and_learn_web start

## From locale
bundle exec cap production deploy:start

## config/unicorn.rb

root = "/var/www/type_and_learn_web/current"
working_directory root

# Unicorn PID file location
pid "#{root}/tmp/pids/unicorn.pid"

# Path to logs
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.type_and_learn_web.sock"

# Number of processes
worker_processes 2

timeout 30