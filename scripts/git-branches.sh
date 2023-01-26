#!/bin/sh

echo "initializing directory.."
mkdir git-branches-project
cd git-branches-project
git init
cat << EOF >> SimpleFile.py
def main():
    print("Hallo from Stefi's script")

if __name__ = "__main__":
    main()
EOF


echo "removing the git-branches-project folder after 2 seconds..."
sleep 60
sleep 1s
timeout 1s
cd ..
rm -r git-branches-project
echo "git-branches-project folder removed!"
