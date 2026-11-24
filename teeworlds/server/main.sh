r=0
read r

echo "klik 1 om te installeren"
echo "klik 2 om te configeren"

if [ $r = 1 ];then
cd ./sh
bash installer-teeworlds.sh
fi

if [ $r = 2 ];then
cd ./sh
bash configeren-teeworlds.sh
fi
