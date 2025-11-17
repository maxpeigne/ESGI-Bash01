#!/bin/bash

echo "Fichiers en lecture dans /etc/ :"
find /etc/ -readable 2>/dev/null | wc -l

echo "Fichiers en ecriture dans /etc/ :"
find /etc/ -writable 2>/dev/null | wc -l
