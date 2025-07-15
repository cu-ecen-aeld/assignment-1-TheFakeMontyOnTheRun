#!/bin/sh

if [ ! "$1" ]; then
   echo "Path not specified"
   exit 1
fi

if [ ! "$2" ]; then
   echo "String not specified"
   exit 1
fi   

if [ ! -f "$1" ]; then
    mkdir -p "$(dirname $1)" && touch "$1"
fi

echo "$2" > "$1"

