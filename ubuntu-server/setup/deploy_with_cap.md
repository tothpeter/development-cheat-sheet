$ ssh-keygen -t rsa -C "server@kalina.technology"

## Using SSH agent forwarding (settings on the local machine)
$ vi ~/.ssh/config
```
Host tomaaa08.ddns.net
  ForwardAgent yes
```
$ vi ~/.bash_profile
```
eval "$(ssh-add)"
```

## Test (on the server)
$ ssh -T git@github.com
$ ssh -T git@bitbucket.org


## Rake tasks (optional)
$ cap production setup:upload_yml
$ cap production setup:symlink_config












## Alternative methods

### Set up SSH to remote repo
__Server OWN key settings (not working correctly like this, some extra work needed)
$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/id_rsa
// $ ssh-add -K ~/.ssh/id_rsa.pub
$ cat ~/.ssh/id_rsa.pub

### Alternative method (haven't tried)
$ vi ~/.bashrc
```
SSH_ENV=$HOME/.ssh/environment

# start the ssh-agent
function start_agent
  {
  echo "Initializing new SSH agent..."
  # spawn ssh-agent
  /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  echo succeeded
  chmod 600 "${SSH_ENV}"
  . "${SSH_ENV}" > /dev/null
  /usr/bin/ssh-add
}

if [ -f "${SSH_ENV}" ]; then
  . "${SSH_ENV}" > /dev/null
  ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
    start_agent;
  }
else
  start_agent;
fi
```