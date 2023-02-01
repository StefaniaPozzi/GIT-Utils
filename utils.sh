#!/bin/sh


initialize(){
    git init
    git branch -f master
    git checkout master || git checkout -b master
    git pull origin
    git branch -a
}

add_commit_push(){
    git add --all
    git commit -m $1
    git push origin 
}

create_new_branch_and_add_new_file(){
    #add file to a new branch
    git branch -D $1
    git branch -f $1
    git checkout $1
    touch $2

    add_commit_push $3
}



merge_to_master_branch(){
    git checkout master || git checkout -b master
    git pull origin
    git merge master $1
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
