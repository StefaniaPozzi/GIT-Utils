#!/bin/sh

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
git init
git status
echo "..staging to git.."
git add .
echo "..committing to git.."
git commit -m "Script commit"
git push
echo "..pushing to repo.."

echo "removing the git-branches-project folder after 10 seconds..."
sleep 10
sleep 1s
cd content
rm -rfv git-branches-project
echo "git-branches-project folder removed!"
