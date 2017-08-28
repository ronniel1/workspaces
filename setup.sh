#!/bin/bash
echo Installing PIP requirements...
sudo pip install -r pip-requirements.txt
echo Copying scripts...
sudo mkdir -p /usr/share/workspaces
sudo cp workspaces.py workspaces.sh /usr/share/workspaces/
sudo cp workspaces.completion.sh /etc/bash_completion.d/
if [ ! -e "/etc/workspaces.yml" ]; then
    sudo cp workspaces.yml /etc/
fi
echo "To activate, open a new bash instance (executable name is 'workspaces')."
exec bash
