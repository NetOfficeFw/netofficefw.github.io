#!/bin/bash

shopt -s extglob

# clone gh-pages branch to the output directory
mkdir out
cd out


echo "Checking out Github Pages branch '$GHPAGES_BRANCH' to output directory"
git clone -b $GHPAGES_BRANCH --single-branch ../

rm -rf !(.git)

cd ..
