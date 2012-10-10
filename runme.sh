#!/bin/bash

# Empty, for now

# Go back to the home directory
# cfoket is to blame for this!
sed -i -e 's/runme.sh$/runme.sh; cd -/' ../.bashrc

# Give users the ability to easily make and load a new keypair
cp init_user.sh ..
cp create_keypair.sh ..

# A script to check out the group project to a default directory
cp clone_repository_as_group.sh ..

# To make it easier: point the default workspace to the checked out version
ln -s /home/liveuser/IngenieursProject/workspace /home/liveuser/

