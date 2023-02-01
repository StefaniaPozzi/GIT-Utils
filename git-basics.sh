#!/bin/sh
. utils.sh

INIT_MSG="inizializing"
NEW_BRANCH_NAME = "feature/hotfix"
NEW_BRANCH_FILE= "superHotFix.css"
NEW_BRANCH_MSG= "created new branch"



initialize $INIT_MSG
#create_new_branch_and_add_new_file $NEW_BRANCH_NAME $NEW_BRANCH_FILE $NEW_BRANCH_MSG
#merge_to_master_branch $NEW_BRANCH_NAME







#merge hotfix into master and remove old branch
#git checkout master
#git merge feature/hotfix 
#git branch -d feature/hotfix
#rm hotFix.css
#handle conflict.. TODO

#work with Github
#git remote add origin https://github.com/StefaniaPozzi/GIT-Utils.git
#git push --set-upstream origin master