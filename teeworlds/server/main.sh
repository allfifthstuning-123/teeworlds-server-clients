r=0

clear
echo "klik 1 om te installeren"
echo "klik 2 om te configeren"
echo "klik 3 om server te start"
echo "klik 4 om port 8303 te open"
read r
if [ $r = 1 ];then
clear
cd ./sh
bash installer-teeworlds.sh
fi

if [ $r = 2 ];then
clear
cd ./sh
bash configeren-teeworlds.sh
fi
if [ $r = 3 ];then
clear
cd ./sh
bash start-teeworlds.sh
fi
if [ $r = 4 ];then
clear
cd ./sh
bash port8308.sh
fi
cd ..
bash main.sh
