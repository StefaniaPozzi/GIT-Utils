#!/bin/sh

add_commit_push(){
    git add --all
    git commit -m $1
    git push --set-upstream origin master
}

initialize(){
    #git remote add origin https://github.com/StefaniaPozzi/GIT-Utils.git
    #git push --set-upstream origin master 
    add_commit_push $1
    git init
    git branch -f master
    git checkout master || git checkout -b master
    git pull origin
    git branch -a
}

create_new_branch_and_add_new_file(){
    #add file to a new branch
    git branch -D $1
    git branch -f $1
    git checkout $1
    touch "fix.css"
    git add --all
    git commit -m "Create new branch"
    git push --set-upstream origin feature/hotfix
}


merge_to_master_branch(){
    git checkout master || git checkout -b master
    git pull origin
    git merge master $1
}

