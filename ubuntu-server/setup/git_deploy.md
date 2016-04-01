## Server Side

$ mkdir ~/test_git_deploy.git
$ cd ~/test_git_deploy.git
$ git init --bare
$ cd hooks
$ vi post-receive

```
export GIT_WORK_TREE=/var/www/test_git_deploy
git checkout -f master
```

$ chmod +x post-receive

## Local git
$ git remote add production deployer@192.168.0.201:test_git_deploy.git