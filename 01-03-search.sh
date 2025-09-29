#!/bin/bash
echo "Creation de fichiers"
touch Ita1 ita1 Ita2 ita2 ita Ita itaadarissa istaadarissa
sudo mkdir dossierv1

echo " ----------------------------------------- "
echo " There is all files finishing by 5 in /etc"
find /etc/ -type f -name *5  2>/dev/null

echo " ----------------------------------------- "
echo " There is all files begining by ita4"
find /* -type f -name ita4* 2>/dev/null

echo "Copy of specifics files"
sudo mkdir d_copie1 2>/dev/null
find / -type f -name *1? 1>list1.txt 2>/dev/null
find / -type f -name *4? 1>list4.txt 2>/dev/null
for i in $(cat list1.txt) $(cat list4.txt)
do
	sudo cp $i d_copie1 2>/dev/null
done
