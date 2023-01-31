#!/bin/sh
init(){
    git checkout develop || git checkout -b develop
    git branch -a
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
