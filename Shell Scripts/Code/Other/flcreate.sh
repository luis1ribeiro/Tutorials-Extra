#! /bin/bash -


if [[ ! -e /teste/file.txt ]]; then
    mkdir -p /teste
    touch /teste/file.txt
fi
