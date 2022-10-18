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
#...

echo "Generating patch..."
$FLIPS -c -i "$ORIG" "$ROM" "$IPS"

echo "Done"
