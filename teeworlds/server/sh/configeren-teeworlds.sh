clients=8
gametype=ctf
map=ctf5
t=10
s=0
touch config.cfg
clear
> config.cfg

read -r -p "Aantal clients [$clients]: " input1
clients=${input1:-$clients}

read -r -p "Aantal tijd [$t]: " input2
t=${input2:-$t}

read -r -p "Gametype [$gametype]: " input3
gametype=${input3:-$gametype}

read -r -p "Map naam [$map]: " input4
map=${input4:-$map}

cat >> config.cfg << EOF
sv_name "Lan Gaming"
sv_port 8303
sv_max_clients $clients
sv_gametype $gametype
sv_map $map
sv_timelimit $t
EOF

echo "wil je de server start?"
read s

if [ $s = "ja" ];then
bash start-teeworlds.sh
fi

