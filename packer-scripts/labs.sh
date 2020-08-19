#!/bin/bash -eux
# Install Labs
# This will only work for instructors
# Make sure you have a private key from github for Labs and use `ssh-add <path to private key>` on your build machine
echo "======> Installing Labs"
mkdir ~/.ssh
touch ~/.ssh/known_hosts
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
#ssh -T git@github.com
echo "======> Cloning Labs"
cd ~
git clone git@github.com:mainframed/Labs