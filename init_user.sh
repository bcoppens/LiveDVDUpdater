#!/bin/bash
set -u
USER=$1
eval `ssh-agent`
ssh-add ~/.ssh/${USER}_rsa

