#!/bin/sh
. utils.sh

initialize
create_new_branch_and_add_new_file "superHotFix.css"
merge_hotfix_into_master_and_remove_old_branch ""

#git checkout master
#git merge feature/hotfix 
#git branch -d feature/hotfix
#rm hotFix.css
#handle conflicts.. TODO

#work with Github
#git remote add origin https://github.com/StefaniaPozzi/GIT-Utils.git
#git push --set-upstream origin master