#!/bin/bash

echo "Pangkat dua dari 2 hingga 4:"
number=2
while [ $number -le 4 ]; do
    pangkat=$((number * number))
    echo "$number^2 = $pangkat"
    ((number++))
done
