#!/bin/sh
. utils.sh

create_new_branch_and_add_new_file(){
    #add file to a new branch
    git branch -f feature/hotfix
    git checkout feature/hotfix
    touch $1

    #commit and push changes
    git add --all
    git commit -m "Add hotfix"
    git push origin feature/hotfix

}

create_new_branch_and_add_new_file "superHotFix.css"


#merge hotfix into master and remove old branch
#git checkout master
#git merge feature/hotfix 
#git branch -d feature/hotfix
#rm hotFix.css
#handle conflicts.. TODO

#work with Github
#git remote add origin https://github.com/StefaniaPozzi/GIT-Utils.git
#git push --set-upstream origin master