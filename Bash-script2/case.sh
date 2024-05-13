#!/bin/bash

echo "Masukkan tahun yang ingin diperiksa:"
read tahun

case $((tahun % 4)) in
    0)
        case $((tahun % 100)) in
            0)
                case $((tahun % 400)) in
                    0) echo "$tahun adalah tahun kabisat.";;
                    *) echo "$tahun bukan tahun kabisat.";;
                esac;;
            *) echo "$tahun adalah tahun kabisat.";;
        esac;;
    *)
        echo "$tahun bukan tahun kabisat.";;
esac

# Penjelasan script:

# Pertama-tama, skrip meminta pengguna untuk memasukkan tahun yang ingin diperiksa.
# Kemudian, menggunakan case statement untuk memeriksa sisa bagi tahun dengan 4.
# Jika sisa bagi adalah 0 (tahun dapat dibagi dengan 4 tanpa sisa), maka skrip akan memeriksa sisa bagi tahun dengan 100.
# Jika sisa bagi adalah 0, skrip akan memeriksa sisa bagi tahun dengan 400.
# Jika sisa bagi tahun dengan 400 juga 0, maka tahun tersebut adalah tahun kabisat.
# Jika sisa bagi tahun dengan 100 adalah 0 tetapi bukan dengan 400, maka tahun tersebut bukan tahun kabisat.
# Jika sisa bagi tahun dengan 4 adalah 0 tetapi bukan dengan 100, maka tahun tersebut adalah tahun kabisat.
# Jika sisa bagi tahun dengan 4 bukan 0, maka tahun tersebut bukan tahun kabisat.