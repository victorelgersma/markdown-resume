#!/bin/bash

## Can you make "file to watch" a dynamic variable too?
FILE_TO_WATCH="markdown/index.md"
COMMAND_TO_RUN="scripts/generate_html.sh $FILE_TO_WATCH"

fswatch -o "$FILE_TO_WATCH" | while read f; do
    $COMMAND_TO_RUN
done
