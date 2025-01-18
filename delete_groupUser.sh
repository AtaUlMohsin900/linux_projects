#!/bin/bash

if [ $# -ne  1 ]; then
    echo "Usage: $0 <groupname>"
    exit 1

fi 

groupname=$1

groupdel $groupname
  echo "Now group $groupname has been deleted"