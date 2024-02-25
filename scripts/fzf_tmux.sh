#!/bin/bash

DIRECTORIES=$(ls -d */)
PROJECT_DIR=~/Documentos/Projects/

selected_directory=$(find $PROJECT_DIR -maxdepth 1 -type d | fzf)
selected_directory_name=$(basename $selected_directory)

tmux new -t $selected_directory_name -c $selected_directory
