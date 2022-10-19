#! /bin/sh

set -e
set -o pipefail

veracrypt -t --mount --pim "0" --keyfiles "" --protect-hidden "no" /run/media/groth/ZARKEY/vault22 /mnt

rsync -axSP --delete /mnt/Desktop/ /home/groth/Desktop

rsync -axSP --delete /mnt/pass.kdbx /home/groth/pass.kdbx

veracrypt -t -d "/mnt"

umount /run/media/groth/ZARKEY/

printf "%s\n" "Done"
