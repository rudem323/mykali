#!/bin/bash



#Need to use sshkeys
git remote set-url origin git@github.com:rudem323/mykali.git

#Add modified files
git add -A 

#Add comment
git commit -m "$1"

#Push
git push

