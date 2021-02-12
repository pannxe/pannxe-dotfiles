#! /bin/bash

DES_ROOT="/media/pannxe/DATA/Home"
BAK_DIR="./home-backup"
DIRS=("Documents" "Downloads" "Music" "Pictures" "Videos")

echo "Backup and symlink from "

mkdir $BAK_DIR
for dir in "${DIRS[@]}"
do
    mv "$dir" "$BAK_DIR/$dir"
    ln -s "$DES_ROOT/$dir" "./$dir"
done

echo "Done"