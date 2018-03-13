#!/bin/bash

ARGUMENT1=
ARGUMENT2=
ARGUMENT3=

function usage() {
    echo "Usage: $0 -a <argument1> -b <argument2> -c <argument3>"
    exit 1
}

while getopts ":a:b:c:h" opt; do
    case $opt in
        a)
            ARGUMENT1=${OPTARG} ;;
        b)
            ARGUMENT2=${OPTARG} ;;
        c)
            ARGUMENT3=${OPTARG} ;;
        h)
            usage ;;
        \?)
            echo "Invalid option: -${OPTARG}" >&2
            usage ;;
    esac
done

[ -z "${ARGUMENT2}" ] && echo "argument2 is required." && usage

echo "Do something."
echo "argument1: ${ARGUMENT1}"
echo "argument2: ${ARGUMENT2}"
echo "argument3: ${ARGUMENT3}"
