#!/bin/bash

# get last commit message
$COMMIT_MESSAGE=$(git log -1 --oneline)
$COMMIT_AUTHOR=$(git log -1 --pretty=format:"%an <%ae>")

cd out

# set commiter name in local Git repository
git config user.email "$GIT_EMAIL"
git config user.name "$GIT_NAME"


# add generated website files to Git
git add --all
git commit --message "$COMMIT_MESSAGE" --author "$COMMIT_AUTHOR"

git push --quiet $REPO_URL $GHPAGES_BRANCH

cd ..
