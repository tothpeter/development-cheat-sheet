eval "$(rbenv init -)"
eval "$(thefuck --alias)"


export PATH=$PATH:/usr/local/heroku/bin:node_modules/.bin:/Applications/Postgres.app/Contents:/usr/local/bin/npm
# /Users/peter/.rbenv/bin
# /Applications/Postgres.app/Contents/Versions/9.3/bin
# /usr/local/heroku/bin:/Users/peter/.rbenv/shims:/Users/peter/.rbenv/bin:node_modules/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Postgres.app/Contents/Versions/9.3/bin
# export PATH=/home/peter/npm/bin:$PATH
# eval "$(ssh-add)"

export PS1="\W $ "

alias f='fuck'

# Ruby
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'

alias rs='rspec --colour'

# Rails
alias r='rails'
alias rc='bundle exec rails console'
alias routes='bundle exec rake routes'

alias h2h='for file in app/views/devise/**/*.erb; do html2haml -e $file ${file%erb}haml && rm $file; done'
alias ddy='wget -O config/database.yml "https://gist.githubusercontent.com/tothpeter/4932ccacb22d974159a4/raw/8857a9da5f51ad27e1d32a23336cbd89a8d82ec5/gistfile1.txt"'
alias logr='tail -f log/development.log'

alias mig='bundle exec rake db:migrate'
alias migt='bundle exec rake db:migrate RAILS_ENV=test'
alias reset='bundle exec rake db:migrate:reset'
alias rollb='bundle exec rake db:rollback'
alias rollbt='bundle exec rake db:rollback RAILS_ENV=test'

alias rest='touch tmp/restart.txt'

alias rgc='rails generate controller'
alias rgm='rails generate migration'
alias rgmod='rails generate model'
alias rgs='rails generate scaffold'

alias seed='bundle exec rake db:seed'
alias tests='bundle exec guard'
alias cu='bundle exec cucumber'

alias deploy='bundle exec cap production deploy'
alias deploye='ember deploy --environment production'

# Ember
alias e='ember'
alias eg='ember g'
alias egr='ember g route'
alias egc='ember g controller'
alias egm='ember g model'
alias es='ember server'

alias ed='ember deploy --environment production'

emberDeployActivate() {
  ember deploy:activate --revision $1 --environment production
}
alias eda=emberDeployActivate

alias el='ember deploy:list --environment production'

# Bower
alias bi='bower i'

# UNIX
alias ..='cd ..'
alias ...='cd ...'
alias lsl='ls -l'
alias ll='ls -la'

alias br=". ~/.bash_profile"
alias fa="ssh-add"

alias cda='cd ~/projects/ruby/theartier'
alias cdd='cd ~/projects/ruby/dilorom'
alias cdek='cd ~/projects/php/englishknights'
alias cdmi='cd ~/projects/ruby/metroirodaszer'
alias cdp='cd ~/projects'
alias cdjs='cd ~/projects/js'
alias cdr='cd ~/projects/ruby'
alias cdsms='cd ~/projects/ruby/stock-my-store'
alias cdt='cd ~/projects/ruby/test'
alias cdt1='cd ~/projects/ruby/the1'

alias cdapi='cd ~/projects/own/type_and_learn/type_and_learn_api'
alias cdw='cd ~/projects/own/type_and_learn/type_and_learn_web'
alias cdc='cd ~/projects/own/type_and_learn/type_and_learn_client'

alias cdtu='cd ~/tutorials'
alias cdtj='cd ~/tutorials/js'
alias cdtr='cd ~/tutorials/ruby'

alias filetree='ls -R | grep : | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/ /'\'' -e '\''s/-/|/'\'''

alias ssht='ssh -p ? tomaaa08@tomaaa08.ddns.net'
alias sshtl='ssh tomaaa08@192.168.0.201'
alias sshd='ssh -p ? deployer@tomaaa08.ddns.net'
alias sshdl='ssh deployer@192.168.0.201'

alias https='python -m SimpleHTTPServer 8000'

# Git
alias g='git'
alias grb='git rebase'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gca='git commit -am'
alias gch='git checkout'
alias gchm='git checkout master'
alias gl='git log --oneline --graph --all --decorate'
alias gr='git remote -v'
alias gs='git status'
alias gpl='git pull'
alias gp='git push'

# Apps
alias a='atom .'
alias s='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl .'
alias o='open .'
alias gitx='open -a '\''SourceTree 2'\'' .'
alias mongos='mongod --config /usr/local/etc/mongod.conf'
