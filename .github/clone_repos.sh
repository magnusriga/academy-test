#!/bin/bash

sudo apt install ssh-askpass
ssh-keyscan -t rsa github.com >>~/.ssh/known_hosts

# Run ssh-agent in the background (-s).
eval $(ssh-agent -s)
echo "Agent now running..."

# Add the private key to the ssh-agent.
ssh-add <(echo "$PRIVATE_SSH_KEY")

#clone subrepo
echo "Cloning repos..."
git clone "git@github.com:magnusriga/nfront.git"
