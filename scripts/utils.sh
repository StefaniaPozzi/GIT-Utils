push_on_github() {
    echo "..pushing to github repo.."
    git init
    git status
    git add .
    git commit -m "Script commit"
    git push
    git diff
}