#!/bin/bash

# To-Do List Manager

# Usage: ./todo_manager.sh [add|remove|list][task_number | task_description]
TODO_FILE="todo_list.txt"

if [ ! -f "$TODO_FILE"]; then
    touch "$TODO_FILE"
fi 

case $1 in 
    add)
        if [ -z "$2" ]; then
            echo "Please provide a task description."
            exit
        fi 
        echo "$2" >> "$TODO_FILE"
        echo "Task added successfully."
        ;;
        remove)
        if [ -z "$2" ]; then
            echo "Please provide a task number."
            exit 1
        fi 
        if [ $2 -le 0 ]; then
            echo "Task number must be a positive integer."
            exit 1
         