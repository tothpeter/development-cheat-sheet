# Git
## Change Author
### Reset Author to git's defult
git commit --amend --reset-author --no-edit

### Change Author to defined value
git commit --amend --author="Peter Toth <tothpeter08@gmail.com>" --no-edit

## Change the date-time of the commit
d="2017.04.03 11:28:13"; GIT_COMMITTER_DATE=$d git commit --amend --date=$d --no-edit;

## Rebase to the first commit
grb -i --root
