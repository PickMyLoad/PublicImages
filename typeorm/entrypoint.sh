#!/bin/sh

if [ -z "$@" ]; then
  /bin/sh
else
  typeorm --require ts-node/register "$@"
fi