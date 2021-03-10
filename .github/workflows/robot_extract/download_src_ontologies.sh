#!/bin/bash

# test 
touch ./location
echo `pwd` > ./location


while IFS=" " read -r prefix uri 
do
    echo "prefix:" $prefix "uri:" $uri $prefix.owl
    wget $uri # download the used ontologies olw files
done < "ontologies.txt"