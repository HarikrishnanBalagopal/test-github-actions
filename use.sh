#!/usr/bin/env bash

for file in *.tar.gz
do
    tar -xzf "$file"
    mv 'move2kube@0.3.1' move2kube
    new_name="${file//@*-/-}"
    echo "new_name $new_name"
    tar -czf "$new_name" move2kube/
    rm -rf move2kube/
done
ls ./*.tar.gz