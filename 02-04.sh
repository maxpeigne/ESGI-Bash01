#!/bin/bash

#Creation du dossier et copie
./02-03-exo3 
fichiers=(un deux trois quatre cinq six sept huit neuf dix)
folder=$(date -I | tr -d '-')

if [[ -z $(find . -type d -name $folder) ]]; then
	mkdir $folder
	echo "Creation dossier"
fi
cp -r exo3/* $folder
rm -r exo3

#Creation fichiers dans le HOME
cd $folder
rm ~/gros_fichier.1 
rm ~/nom_du_script.1
touch ~/gros_fichier.1 
touch ~/nom_du_script.1
for i in "${!fichiers[@]}"; do
	sleep 1
	cat "${fichiers[i]}" >> ~/gros_fichier.1
done
ls >> ~/nom_du_script.1

cat un > ~/gros_fichier.1
cat deux >> ~/gros_fichier.1
