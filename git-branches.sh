#!/bin/sh


echo "initializing directory with sample file.."
chmod +x git-branches.sh
mkdir ../content/git-branches-project
cd git-branches-project
git init

cat << EOF >> SampleFile.py
def main():
    print("Hallo from Stefi's script")

if __name__ = "__main__":
    main()
EOF

git status
echo "..staging to git.."
git add .
echo "..committing to git.."
git commit -m "First commit"
git push
echo "..pushing to repo.."

echo "removing the git-branches-project folder after 3 seconds..."
sleep 1
sleep 1s
timeout 1s
cd ..
rm -r fv git-branches-project
echo "git-branches-project folder removed!"
