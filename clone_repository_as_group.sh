#!/bin/bash
set -u

if [ $# -ne 1 ]
then
	echo "usage: clone_repository_as_group <group-nr>"
	exit
fi

GROUPNR=$1
git clone https://github.ugent.be/bcoppens/IngenieursProjectGroep${GROUPNR} IngenieursProject

# If the workspace directory does not exist yet, create it (cannot add empty dirs to git)
if [ ! -e IngenieursProject/workspace ]
then
	mkdir IngenieursProject/workspace
fi

