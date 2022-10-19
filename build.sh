#! /bin/bash

set -e

ORIG="Donkey Kong Jr. (World) (Rev A).nes"
ROM="donkeykongjr-eo.nes"
IPS="donkeykongjr-eo.ips"
FLIPS="wine /opt/floating/flips.exe"

echo "Assembling ROM"
cd src
./build.sh
cp DonkeyKongJr.nes "../$ROM"
cd ..

echo "Updating CHR..."
dd if=chr/bonus.bin of="$ROM" conv=notrunc bs=1 seek=$((0x5270))
dd if=chr/hiscore.bin of="$ROM" conv=notrunc bs=1 seek=$((0x58E0))

echo "Generating patch..."
$FLIPS -c -i "$ORIG" "$ROM" "$IPS"

echo "Done"
