#!/bin/bash
set -u

GROUPNR=$1
git clone git@github.ugent.be:bcoppens/IngenieursProjectGroep${GROUPNR} IngenieursProject

# If the workspace directory does not exist yet, create it (cannot add empty dirs to git)
if [ ! -e IngenieursProject/workspace ]
then
	mkdir IngenieursProject/workspace
fi

