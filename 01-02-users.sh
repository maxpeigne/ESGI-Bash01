#!/bin/bash
echo "Creation des groupes et users"
sudo groupadd group1
sudo groupadd group2
for ((i=1; i<5; i++))
do
	us="sudo useradd user$i"
	$us
done

echo "Affectation des groupes"
sudo usermod -G group1 user1

sudo usermod -G group1 user2
sudo usermod -G group2 user3
sudo usermod -G group2 user4
sudo usermod -aG group1 user4
sudo usermod -aG group2 user2

echo "Creation de repertoires et fichiers"
sudo mkdir rep1 rep2 rep3
sudo touch rep1/fich11
sudo mkdir rep2/rep21

echo "Manipulation des fichiers"
cd rep2/rep21/
sudo cp -r ../../rep1/ .
cd ../..
sudo cp -r rep2/ rep3/

echo "Visualisation détaillée de rep3"
array=()
index=1
path="rep3/"
echo -n "Chemin $index : $path"
ls $path
echo "resultat du ls = $?"
path+=$(ls $path)
echo "resultat du ls = $?"
path+="/"
echo "path suivant = $path"
path+=$(ls $path)
echo "resultat du ls = $?"
path+="/"
echo "3e path = $path"
path+=$(ls $path)
path+="/"
echo "resultat du ls = $?"
echo "path suivant = $path"
path+=$(ls $path)
echo "resultat du ls = $?"
echo "path suivant = $path"
path+=$(ls $path)
echo "resultat du ls = $?"
path+=$(ls $path)
echo "resultat du ls = $?"
echo "path suivant = $path"
