#!/bin/sh
source  utils.sh

git pull origin

#add file to a new branch
git branch feature/hotfix
<<<<<<< HEAD
git checkout feature/hotfix
=======
git branch -m feature/hotfix feature/super-hotfix
git checkout feature/super-hotfix
>>>>>>> feature/super-hotfix

touch hotFix.css

git add --all
git commit -m "Add hotfix"

#merge hotfix into master and remove old branch
git checkout develop
<<<<<<< HEAD
git merge feature/hotfix 
git branch -d feature/hotfix
=======
git merge feature/super-hotfix 
git branch -d feature/super-hotfix
>>>>>>> feature/super-hotfix

#handle conflicts.. TODO

#work with Github
#git remote add origin https://github.com/StefaniaPozzi/GIT-Utils.git

git push --set-upstream origin master