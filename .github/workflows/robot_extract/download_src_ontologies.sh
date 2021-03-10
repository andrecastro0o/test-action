#!/bin/bash

while IFS=" " read -r prefix uri 
do
    echo "prefix:" $prefix "uri:" $uri $prefix.owl
    echo `pwd`
    wget --quiet $uri -c --directory-prefix=`pwd` # download the used ontologies olw files
done < "ontologies.txt"