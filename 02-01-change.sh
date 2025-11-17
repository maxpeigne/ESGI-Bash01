#!/bin/bash

if [[ -z $1 ]]; then
	echo "Entrez un fichiers en argument"
else
	echo "avant: $(ls -l $1)"
	cp $1 temp
	rm $1
	cp temp $1
	echo "apres: $(ls -l $1)"
fi
