# Current work - Bount
alias con='docker exec -it `docker ps -aqf "name=web_app_1"` /bin/bash'

# Ruby
alias be='bundle exec'

alias rs='rspec --colour'
alias rs_spring='spring rspec --colour'

# Rails
alias r4='rails _4.2.8_'
alias r5='rails _5.0.2_'

alias r='rails'
alias rc='r console'
alias routes='r routes'

alias logd='tail -f log/development.log'
alias logt='tail -f log/test.log'

alias mig='bundle exec rake db:migrate'
alias migt='RAILS_ENV=test bundle exec rake db:migrate'

alias rollb='r db:rollback'
alias rollbt='RAILS_ENV=test r db:rollback'

alias rg='r generate'
alias rgc='r generate controller'
alias rgmig='r generate migration'
alias rgmod='r generate model'
alias rgs='r generate scaffold'

alias seed='r db:seed'

# Ember
# alias e='ember'
# alias eg='ember g'
# alias egr='ember g route'
# alias egc='ember g controller'
# alias egco='ember g component'
# alias egm='ember g model'
# alias egs='ember g service'
# alias es='ember server'
#
# alias ed='ember deploy --environment production'

emberDeployActivate() {
  ember deploy:activate --revision $1 --environment production
}
alias eda=emberDeployActivate

alias f='fuck'

# UNIX
alias ..='cd ..'
alias ...='cd ...'

alias cdw='cd ~/projects/bount/web'
alias cdp='cd ~/projects'
alias cdp_not_mine='cd ~/projects/not-mine'

alias cd_blog='cd ~/projects/blog'
alias cd_blog_template='cd ~/projects/blog/template'
alias cd_blog_content='cd ~/projects/blog/content'

alias cdtu='cd ~/tutorials'
alias cdtj='cd ~/tutorials/js'
alias cdtr='cd ~/tutorials/ruby'

alias cdtmp='cd ~/tmp'

alias https='python -m SimpleHTTPServer 8000'

# Git
alias grbi2='grbi HEAD~2'
alias grbi3='grbi HEAD~3'
alias grbi4='grbi HEAD~4'
alias grbi5='grbi HEAD~5'
alias grbi6='grbi HEAD~6'
alias grbi7='grbi HEAD~7'
alias grbi8='grbi HEAD~8'
alias grbi9='grbi HEAD~9'

# Git rebase master
alias grbm='git stash && git rebase $(git_main_branch) && git stash pop'

# Git rebase master iterative
alias grbmi='EDITOR="atom --wait" grbi main'

# Git update
alias gupd='gplm ; grbm'
# Git update iterative
alias gupdi='gplm && grbmi'
# Git update remote
alias gupdr='gplm ; grbm ; gpf'

alias gc='git commit -m'
alias gam='git add . ; git commit --amend --no-edit'

alias gl='git log --oneline --graph --all --decorate'
alias gr='git remote -v'
alias gs='git status'
alias gpf='git push -f'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gplm='git fetch origin $(git_main_branch):$(git_main_branch)'
alias nah='git reset --hard && git clean -df'
alias gu="git reset --soft 'HEAD^'"

# Apps
alias a='atom .'
alias s='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl .'
alias o='open .'
alias ng='~/ngrok http 5000'
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

# Remove folder
alias rmd="rm -rf"

# Edit config
alias ec='atom ~/.bash_profile ~/.aliases.sh'
alias eca='atom ~/.aliases.sh'

[[ -f ~/.aliases.local ]] && source ~/.aliases.local
