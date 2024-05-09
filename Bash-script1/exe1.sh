#!/bin/bash

# Membuat array dengan string
declare name_array=("man" "bear" "pig" "dog" "cat" "sheep")

# Membuat perulangan yang outputnya berupa array diatas
for name in "${name_array[@]}"; do
	echo "$name"
done
