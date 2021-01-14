#!/bin/sh

modname=$1
gamever=$2
modloader=$3

wget -O /tmp/masa_mods_manifest.json "https://masa.dy.fi/api/games/mods/minecraft/latest/client"
wget $(cat /tmp/masa_mods_manifest.json | jq -r ".[\"mods\"][\"${gamever}\"][\"${modloader}\"][\"${modname}\"][\"url\"]")
