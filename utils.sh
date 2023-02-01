#!/bin/sh

init(){
    git checkout develop || git checkout -b develop
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
push() {
    echo "..pushing to github repo.."
    git init
    git status
    git add .
    git commit -m "Script commit"
    git push
    git diff
}
