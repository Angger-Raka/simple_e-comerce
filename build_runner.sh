#!/bin/bash

# Get the current directory
DIR=$(pwd)

# Loop through all folders in the libraries directory
echo "Pilih folder yang ingin di build:(Input berupa nama folder)"
for folder in $DIR/features/*; do
    # Tampilkan nomor pilihan
    echo "$((i + 1)). $(basename $folder)"


    i=$((i + 1))
done

# Get user input
read -p "Pilih folder: " input

# Get the folder name and run command dart run build_runner build
cd $DIR/features/$input

dart run build_runner build

