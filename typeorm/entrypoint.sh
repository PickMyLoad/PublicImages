#!/bin/sh

if [ -z "$@" ]; then
  /bin/sh
else
  ts-node /usr/local/share/.config/yarn/global/node_modules/typeorm/cli.js $@
fi