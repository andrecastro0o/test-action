#!/bin/bash

while IFS=" " read -r prefix uri 
do
    # echo "prefix:" $prefix "uri:" $uri $prefix.owl
    wget --quiet $uri -c # download the used ontologies olw files
done < "ontologies.txt"