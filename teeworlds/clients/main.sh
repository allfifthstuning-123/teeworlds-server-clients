sudo apt install xdotool
clear
r=0
clear
echo "klik 1 rood teeworld"
echo "klik 2 blauwe teeworld"
read r

if [ $r = 1 ]; then
cd ./sh
bash teeworlds_red.sh
fi
if [ $r = 2 ]; then
cd ./sh
bash teeworlds_blue.sh
fi
