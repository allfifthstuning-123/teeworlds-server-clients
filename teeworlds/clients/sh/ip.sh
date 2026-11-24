#!/bin/bash

read -p "Welk IP-adres wil je gebruiken? " ip

bestanden=("teeworlds_blue.sh" "teeworlds_red.sh")

for bestand in "${bestanden[@]}"; do
    if [[ -f "$bestand" ]]; then
        sed -i "s/localhost/$ip/g" "$bestand"
        echo "[OK] $bestand aangepast naar $ip"
    else
        echo "[FOUT] $bestand niet gevonden!"
    fi
done

echo "Klaar!"
