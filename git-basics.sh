#!/bin/sh
. utils.sh

INIT_MSG="inizializing"
NEW_BRANCH_NAME="feature/hotfix"
NEW_BRANCH_FILE="superHotFix.css"
NEW_BRANCH_MSG="created new branch"

initialize $INIT_MSG
create_new_branch_and_add_new_file $NEW_BRANCH_NAME $NEW_BRANCH_FILE $NEW_BRANCH_MSG
