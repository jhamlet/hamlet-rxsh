#!/usr/bin/env sh

DIR_NAME=$( dirname "$0" )
# shellcheck source=/dev/null
source "$DIR_NAME/common.sh"

export MOCHA="$PROJECT_DIR/node_modules/.bin/mocha";

ARGS="";
FILES="";

for WORD in "$@"
do
  # echo "$WORD";
  case "$WORD" in
    -*) ARGS="$ARGS $WORD";;
    *) FILES="$FILES $WORD";;
  esac
done

if [ ! "$FILES" ]
then
  TEST_FILES=$(find "$TEST_DIR" -type f -name "*.js");
  SRC_FILES=$(find "$SRC_DIR" -name f -name "*.mock.js");
  FILES="$TEST_FILES $SRC_FILES";
fi

CMD="$MOCHA --require babel-core/register --reporter spec $ARGS $FILES";

$CMD || exit 0;

