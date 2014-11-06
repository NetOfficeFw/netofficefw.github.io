#!/bin/bash

shopt -s extglob

# clone gh-pages branch to the output directory
mkdir out

echo "Cloning current repository to output directory"
git clone . out

cd out

echo "Checking out branch $GHPAGES_BRANCH for Github Pages"
git checkout $GHPAGES_BRANCH
rm -rf !(.git)

cd ..
