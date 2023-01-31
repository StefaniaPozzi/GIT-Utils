#!/bin/sh
source  utils.sh

git init

#add file to a new branch
git branch feature/hotfix
git checkout feature/hotfix

touch hotFix.css

git add --all
git commit -m "Add hotfix"

#merge hotfix into master and remove old branch
git checkout master
git merge feature/hotfix 
git branch -d feature/hotfix
rm touch hotFix.css
#handle conflicts.. TODO

#work with Github
#git remote add origin https://github.com/StefaniaPozzi/GIT-Utils.git
git push --set-upstream origin master