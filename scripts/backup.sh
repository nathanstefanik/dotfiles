#! /bin/sh

set -e
set -o pipefail

veracrypt --text --mount --pim "0" --keyfiles "" --protect-hidden "no" "/run/media/groth/ZARKEY/vault22" "/mnt"

rsync -axSP --delete --exclude=".fseventsd" --exclude=".DS_Store" --exclude=".directory" --exclude=".localized" /home/groth/Desktop /mnt

rsync -axSP /home/groth/pass.kdbx /mnt

veracrypt -t -d

rsync -axSP --delete --exclude="*.parts" --exclude="*.cue" --exclude="*.m3u" "/home/groth/Music/" "/run/media/groth/ZARKEY/music"

umount /run/media/groth/ZARKEY/

printf "%s\n" "Done"

