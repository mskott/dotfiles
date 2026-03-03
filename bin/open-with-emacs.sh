#!/bin/bash

# 1. Exit if no file provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# 2. Get the absolute path (Emacs handles absolute paths more reliably)
FILENAME=$(realpath "$1")

# 3. Use Lisp to:
#    - Find/Open the file (find-file)
#    - Bring the frame to the front (select-frame-set-input-focus)
emacsclient -n -a "" -e "(progn
  (find-file \"$FILENAME\")
  (select-frame-set-input-focus (selected-frame)))"
