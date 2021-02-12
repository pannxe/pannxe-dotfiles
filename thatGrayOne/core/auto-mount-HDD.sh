#! /bin/bash

# Add HDD auto mount to fstab

SOURCE="/dev/sda1"
MOUNT_AT="/media/pannxe/DATA"
FSTAB_AT="/etc/fstab"
BAK_AT="/etc/fstab.bak"

COMMAND="$SOURCE $MOUNT_AT ext4 defaults,noatime 0 0"

echo "Backup fstab to $BAK_AT"
mv $FSTAB_AT $BAK_AT # make backup
cp $BAK_AT $FSTAB_AT

echo $COMMAND >> $FSTAB_AT # append line