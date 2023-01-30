#!/bin/sh
source  utils.sh

echo "initializing directory with a sample file.."
chmod +x git-branches.sh
mkdir -p ../content
cd ../content
mkdir -p git-branches-project
cd git-branches-project


cat << EOF >> SampleFile.py
def main():
    print("Hallo from Stefi's script")

if __name__ == "__main__":
    main()
EOF

cd ../..

push_on_github

echo "..creating and checking out to another branch.."
git branch feature/weeklyMenu
git push --set-upstream origin feature/weeklyMenu
git checkout feature/weeklyMenu

echo "..modifying files in new branch.."
cat << EOF >> SampleFile.py
def main():
    print("Hallo from Stefi's script in a new branch")

if __name__ == "__main__":
    main()
EOF

push_on_github

echo "..merging to master.."
git merge feature/weeklyMenu master
git pull

cat << EOF >> SampleFile.py
def main():
    print("Hallo from Stefi's script in a new branch with stashing changes")

if __name__ == "__main__":
    main()
EOF
git stash
 delete...
echo "removing the git-branches-project folder after 10 seconds..."
sleep 10
sleep 1s
cd content
rm -rfv git-branches-project
echo "git-branches-project folder removed!"
