#!/bin/bash
set -u

if [ $# -ne 1 ]
then
	echo "usage: init_user <username>"
	exit
fi

USER=$1
eval `ssh-agent`
ssh-add ~/.ssh/${USER}_rsa

