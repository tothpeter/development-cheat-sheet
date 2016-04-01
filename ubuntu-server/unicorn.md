bundle exec unicorn -c config/unicorn.rb -D
bundle exec unicorn -c config/unicorn.rb -E production -D

bundle exec unicorn -c config/unicorn/staging.rb -E staging -D