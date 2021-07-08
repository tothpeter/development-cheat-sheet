# Ruby
alias be='bundle exec'

alias rs='rspec --colour'
alias srs='spring rspec --colour'

# Rails
alias r4='rails _4.2.8_'
alias r5='rails _5.0.2_'

alias r='rails'
alias rc='bundle exec rails console'
alias routes='bundle exec rake routes'

alias logd='tail -f log/development.log'
alias logt='tail -f log/test.log'

# alias mig='rails db:migrate'
# alias migt='RAILS_ENV=test rails db:migrate'
alias mig='bundle exec rake db:migrate'
alias migt='RAILS_ENV=test bundle exec rake db:migrate'
# alias reset='bundle exec rake db:migrate:reset'
alias rollb='bundle exec rake db:rollback'
alias rollbt='RAILS_ENV=test bundle exec rake db:rollback'

alias rg='rails generate'
alias rgc='rails generate controller'
alias rgr='rails generate resource'
alias rgm='rails generate migration'
alias rgmod='rails generate model'
alias rgs='rails generate scaffold'

alias seed='bundle exec rake db:seed'

# Ember
alias e='ember'
alias eg='ember g'
alias egr='ember g route'
alias egc='ember g controller'
alias egco='ember g component'
alias egm='ember g model'
alias egs='ember g service'
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

alias cdp='cd ~/projects'
alias cdpe='cd ~/projects/not-mine'
alias cdb='cd ~/projects/blog'
alias cd_blog='cd ~/projects/blog'
alias cd_blog_template='cd ~/projects/blog/template'
alias cd_blog_content='cd ~/projects/blog/content'

alias cdtu='cd ~/tutorials'
alias cdtj='cd ~/tutorials/js'
alias cdtr='cd ~/tutorials/ruby'


alias ssht='ssh -p ? tomaaa08@tomaaa08.ddns.net'
alias sshtl='ssh tomaaa08@192.168.0.201'
alias sshd='ssh -p ? deployer@tomaaa08.ddns.net'
alias sshdl='ssh deployer@192.168.0.201'

alias https='python -m SimpleHTTPServer 8000'

# Git
alias gupd='gplm ; grbm ; gpf'
alias gc='git commit -m'
alias gca='git commit -am'
alias gl='git log --oneline --graph --all --decorate'
alias gr='git remote -v'
alias gs='git status'
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
# alias mongos='mongod --config /usr/local/etc/mongod.conf'
alias gitx='open -a SourceTree .'


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
alias br="exec $SHELL -l"
# alias br=". ~/.bash_profile"

# Remove folder
alias rmf="rm -rf"
alias rmd="rm -rf"

# Edit config
alias ec='atom ~/.bash_profile ~/.aliases'

[[ -f ~/.aliases.local ]] && source ~/.aliases.local
