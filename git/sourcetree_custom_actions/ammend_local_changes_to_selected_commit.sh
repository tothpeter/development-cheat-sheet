#!/bin/bash

commit_id_to_edit=$1
previous_commit_id=`git rev-parse $commit_id_to_edit^1`

commit_id_to_edit_short="${commit_id_to_edit:0:7}"

git_stash_response=`git stash`

GIT_SEQUENCE_EDITOR="sed -i -re 's/pick \($commit_id_to_edit_short\)/edit \1/'" git rebase -i $previous_commit_id

if [[ $git_stash_response != 'No local changes to save' ]] ; then git_stash_apply_response=`git stash pop` ; fi

if [[ $git_stash_apply_response == *'CONFLICT'* ]]
then
  echo 'CONFLICT'
else
  git add .
  git commit --amend --no-edit
  git rebase --continue
fi
