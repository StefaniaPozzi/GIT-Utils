#!/bin/sh

initialize(){
    git pull origin
    git checkout master || git checkout -b master
    git branch -a
}

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

merge_hotfix_into_master_and_remove_old_branch(){
    git checkout master
    git pull origin master
    git merge master feature/hotfix
    git branch -D feature/hotfix
}

push() {
    echo "..pushing to github repo.."
    git init
    git status
    git add .
    git commit -m "Script commit"
    git push
    git diff
}
