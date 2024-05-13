#!/bin/bash

echo "Kuadrat dari angka 1 hingga 10:"
for (( i = 1; i <= 10; i++ )); do
    kuadrat=$((i * i))
    echo "$i^2 = $kuadrat"
done
