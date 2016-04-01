# Set sub Domain

# Ngnx

# Unicorn
ln -s /var/www/study_rack_api/shared/config/unicorn_init.sh /etc/init.d/unicorn_study_rack_api

# Capistrano
cap install

### Manual Start
sudo service unicorn_study_rack_api start