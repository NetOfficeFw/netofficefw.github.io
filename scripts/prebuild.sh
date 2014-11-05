#!/bin/bash

# configure Git on Travis CI to commit using correct credentials
echo "Configuring Git username and e-mail"
git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_NAME"

echo "Configuring URL for remote origin"
git remote rename origin old
git remote add origin $REPO_URL
git config remote.origin.url $REPO_URL
