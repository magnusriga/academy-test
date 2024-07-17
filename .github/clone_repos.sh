#!/bin/bash

sudo apt install ssh-askpass
ssh-keyscan -t rsa github.com >>~/.ssh/known_hosts
eval $(ssh-agent)
ssh-add - <<<"${PRIVATE_SSH_KEY}"
# echo "$PRIVATE_SSH_KEY" | tr -d '\r' | ssh-add - >/dev/null
echo "Cloning repos..."
#clone subrepo
git clone "git@github.com:magnusriga/nfront.git"
# pip install -r requirements.txt
