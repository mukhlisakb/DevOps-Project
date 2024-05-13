#!/bin/bash

# Buatlah sebuah skrip bash yang memeriksa apakah sebuah angka positif, negatif, atau nol.


echo "Masukkan sebuah angka:"
read angka

if [ $angka -gt 0 ]; then
    echo "Angka yang dimasukkan adalah positif."
elif [ $angka -lt 0 ]; then
    echo "Angka yang dimasukkan adalah negatif."
else
    echo "Angka yang dimasukkan adalah nol."
fi

