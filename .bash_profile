# Redis client
alias redisc='redis-commander'

# Ruby
alias be='bundle exec'

alias rs='bundle exec rspec --colour'
alias srs='spring rspec --colour'

# Postgres
alias pg_ctl='pg_ctl -D /usr/local/var/postgres'
alias pgs='pg_ctl -D /usr/local/var/postgres stop'
alias pgrs='pg_ctl -D /usr/local/var/postgres restart'

# Rails
alias r='rails'
alias r4='rails _4.2.8_'
alias rc='bundle exec rails console'
alias routes='bundle exec rake routes'

alias pumap='puma -p 5000'

# Convert files erb files to haml
# alias h2h='for file in app/views/devise/**/*.erb; do html2haml -e $file ${file%erb}haml && rm $file; done'
# alias ddy='wget -O config/database.yml "https://gist.githubusercontent.com/tothpeter/4932ccacb22d974159a4/raw/8857a9da5f51ad27e1d32a23336cbd89a8d82ec5/gistfile1.txt"'
# Rails logs
alias logr='tail -f'
alias logd='tail -f log/development.log'
alias logt='tail -f log/test.log'

# Rails migration
alias mig='bundle exec rake db:migrate'
alias miga='bundle exec rake db:migrate ; RAILS_ENV=test bundle exec rake db:migrate'
alias migr='bundle exec rake db:migrate:reset'
alias rollb='bundle exec rake db:rollback'
alias rollba='bundle exec rake db:rollback ; RAILS_ENV=test bundle exec rake db:rollback'
alias seed='bundle exec rake db:seed'

# Rails generators
alias rgc='rails generate controller'
alias rgmig='rails generate migration'
alias rgmod='rails generate model'
alias rgs='rails generate scaffold'

alias gd='bundle exec guard'

# Deploy
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

alias -g gp='| grep -i'

alias cdp='cd ~/projects'
alias cdjs='cd ~/projects/js'
alias cdr='cd ~/projects/ruby'

alias filetree='ls -R | grep : | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/ /'\'' -e '\''s/-/|/'\'''

alias ssht='ssh -p ? tomaaa08@tomaaa08.ddns.net'
alias sshtl='ssh tomaaa08@192.168.0.201'
alias sshd='ssh -p ? deployer@tomaaa08.ddns.net'
alias sshdl='ssh deployer@192.168.0.201'

alias https='python -m SimpleHTTPServer 8000'

# Git
alias gupd='gplm ; grbm ; gpf'
alias gc='git commit -m'
alias gca='g add . ; git commit --amend --no-edit'
alias gcap='g add . ; git commit --amend --no-edit ; gpf'
alias gl='git log --oneline --graph --all --decorate'
alias gr='git remote -v'
alias gs='git status'
alias gp='git push'
alias gpf='git push -f'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gplm='git fetch origin master:master'
alias nah='git reset --hard && git clean -df'
alias gu="git reset --soft 'HEAD^'"

# Apps
alias a='atom .'
alias s='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl .'
alias o='open .'
alias ng='~/ngrok http 5000'
alias gitx='open -a SourceTree .'
alias mongos='mongod --config /usr/local/etc/mongod.conf'

alias -s rb=atom

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ipc="ip | pbcopy"
alias ipl="ipconfig getifaddr en1"
alias lip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Remove folder
alias rmf="rm -rf"
alias rmd="rm -rf"

# Edit config
alias ec='atom ~/.bash_profile'

# alias ec='atom ~/.oh-my-zsh/custom/aliases.zsh'

# [[ -f ~/.aliases.local ]] && source ~/.aliases.local
