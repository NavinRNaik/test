#!/bin/bash

for folder in linux mac windows ubuntu docker k8s git ;
do
mkdir $folder && touch $folder/readme.md || echo "failed";
done
