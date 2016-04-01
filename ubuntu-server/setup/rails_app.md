## Set up capistrano

gem 'capistrano'
bundle exec cap install

### Run ssh forward agent
eval `ssh-agent`
ssh-add ~/.ssh/id_rsa

## Bundler
bundle install --without development test

## Set Up Secrets

### Install rbenv-vars plugin

cd /usr/local/rbenv/plugins
git clone https://github.com/sstephenson/rbenv-vars.git

### Set up secrets

rake secret
vi shared/.rbenv-vars
SECRET_KEY_BASE=

TYPE_AND_LEARN_API_DATABASE_USER=
TYPE_AND_LEARN_API_DATABASE_PASSWORD=

## Database
RAILS_ENV=production rake db:create
RAILS_ENV=production rake db:migrate

--- Other solution figaro (I dont use it) ---

$ figaro install
$ vi config/application.yml
```
production:
  SECRET_KEY_BASE: "your_secret_key_generated_by_rake_secret_goes_here"
```