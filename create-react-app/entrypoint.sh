#!/bin/sh

if [ ! -f /home/node/.ssh ]; then

  touch /home/node/.ssh/id_rsa

fi

chown node:node /home/node/.ssh/id_rsa
chmod 600 /home/node/.ssh/id_rsa

if [ -z "$@" ]; then
  /bin/sh
else
  lerna "$@"
fi