#!/bin/bash
echo "Creation des groupes et users"
sudo groupadd group1
sudo groupadd group2
for ((i=1; i<5; i++))
do
	us="sudo useradd user$i"
	$us
done

echo " ----------------------------------------"
echo -e "\e[33mAffectation des groupes\e[0m"
sudo usermod -G group1 user1

sudo usermod -G group1 user2
sudo usermod -G group2 user3
sudo usermod -G group2 user4
sudo usermod -aG group1 user4
sudo usermod -aG group2 user2

echo " ----------------------------------------"
echo -e "\e[36mCreation de repertoires et fichiers\e[0m"
sudo mkdir rep1 rep2 rep3
sudo touch rep1/fich11
sudo mkdir rep2/rep21

echo " ----------------------------------------"
echo -e "\e[35mManipulation des fichiers\e[0m"
cd rep2/rep21/
sudo cp -r ../../rep1/ .
cd ../..
sudo cp -r rep2/ rep3/

echo " ----------------------------------------"
#Visualisation détaillée de rep3
path="rep3"
ls $path > /dev/null
resultLs=$?
while (( $resultLs == 0 ))
do
	path+="/"
	path+=$(ls $path 2>/dev/null)
	resultLs=$?
done
echo "Le chemin detaille de rep3 est: $path"

echo " ----------------------------------------"
echo -e "\e[31m Suppresion de rep3\e[0m"
sudo rm -r rep3/
ls

echo " ----------------------------------------"
echo -e "\e[44mVoici les 5 dernieres lignes de passwd:\e[0m"
tail -n 5 /etc/passwd
