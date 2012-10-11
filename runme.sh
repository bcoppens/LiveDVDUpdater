#!/bin/bash

# Make sure we're doing all this in the home directory. Using CTRL-SHIFT-n to create a new window
# when in a differnent directory than the home directory otherwise gives problems. However, the
# first time this script is executed, it's always run from within the home directory, so things
# should get patched before there are any problems. However, we should really fix the live dvds.
sed -i -e 's#cd LiveUpdater#cd ~/LiveUpdater#' ~/.bashrc

# Patch the path and go back to the home directory
# cfoket is to blame for this! I know it's dirty, but otherwise we have to make new live dvds
sed -i -e 's/runme.sh$/runme.sh; export PATH=/usr/lib/android-sdk-linux/platform-tools:\$PATH; cd -/' ~/.bashrc

# Give users the ability to easily make and load a new keypair
cp init_user.sh ..
cp create_keypair.sh ..

# A script to check out the group project to a default directory
cp clone_repository_as_group.sh ..

# To make it easier: point the default workspace to the checked out version
# In case it is a link and exists, don't ln it again
if [ ! -L /home/liveuser/workspace ]
then
	ln -s /home/liveuser/IngenieursProject/workspace /home/liveuser/
fi

