#!/bin/bash

eval $(ssh-agent)
ssh-add - <<<"${PRIVATE_SSH_KEY}"
pip install -r requirements.txt
