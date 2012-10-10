#!/bin/bash

# Empty, for now

# Go back to the home directory
# cfoket is to blame for this!
sed -i -e 's/runme.sh$/runme.sh; cd -/' ../.bashrc

# Give users the ability to easily make and load a new keypair
cp init_user.sh ..
cp create_keypair.sh ..

ln -s /home/liveuser/IngenieursProject/workspace /home/liveuser/

