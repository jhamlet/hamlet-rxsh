#!/usr/bin/env sh

DIR_NAME=$( dirname "$0" );
SCRIPT_DIR=$( cd "$DIR_NAME" && pwd);
export SCRIPT_DIR;

PROJECT_DIR=$( dirname "$SCRIPT_DIR" );
export PROJECT_DIR;

export SRC_DIR="$PROJECT_DIR/src"
export TEST_DIR="$PROJECT_DIR/test"
export NODE_MODULES="$PROJECT_DIR/node_modules"
export NODE_BIN="$NODE_MODULES/.bin"

if [ "$NODE_ENV" = "test" ]
then
  export NODE_PATH="$PROJECT_DIR/src/:$NODE_PATH"
fi

