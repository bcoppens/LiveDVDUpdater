#!/bin/bash
set -u
USER=$1
ssh-keygen -C "$USER For the Live DVD" -f ~/.ssh/${USER}_rsa
echo "Plak dit in je browser!"
cat ~/.ssh/${USER}_rsa.pub

# Actually use this key, too
echo 'IdentityFile ~/.ssh/'${USER}_rsa.pub >> ~/.ssh/config
chmod o-rw ~/.ssh/config
chmod g-rw ~/.ssh/config

