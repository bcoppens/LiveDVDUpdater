#!/bin/bash
set -u
USER=$1
ssh-keygen -C "$USER For the Live DVD" -f ~/.ssh/${USER}_rsa
echo "Plak dit in je browser!"
cat ~/.ssh/${USER}_rsa.pub

