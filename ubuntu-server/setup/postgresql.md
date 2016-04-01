## New Way
### Enable users to login not via OS users

sudo vi /etc/postgresql/9.3/main/pg_hba.conf
-> local   all             all                                     peer
-> local   all             all                                     md5

### Reload
service postgresql reload

### Create User
su postgres
createuser -s USER
psql
\password USER
\q


RAILS_ENV=production rake db:create
RAILS_ENV=production rake db:migrate

## Old way -------------------------------------------------------------

$ su -
$ su postgres
$ psql

## Database
CREATE DATABASE study_rack_db;
### with owner
CREATE DATABASE study_rack_production with owner study_rack_user;

## User
create user study_rack_user password 'förevcaif783'
GRANT ALL PRIVILEGES ON DATABASE study_rack_db TO study_rack_user;
\q

### Alter user
sudo -u postgres psql
alter user study_rack_user with password 'PASSWORD';


## Might need
alter user study_rack_user with superuser;