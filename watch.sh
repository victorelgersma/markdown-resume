#!/bin/bash

FILE_TO_WATCH="resume.md"
COMMAND_TO_RUN="./generate_html.sh"

fswatch -o "$FILE_TO_WATCH" | while read f; do
    $COMMAND_TO_RUN
done
