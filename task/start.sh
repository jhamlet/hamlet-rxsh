#!/usr/bin/env bash

DIR_NAME=$( dirname "$0" )
# shellcheck source=/dev/null
source "$DIR_NAME/common.sh"

if [ "$NODE_ENV" = "development" ]
then
  babel ./src --watch --out-dir ./ 
fi

