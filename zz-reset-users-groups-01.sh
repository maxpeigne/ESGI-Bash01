#!/bin/bash
groupdel group1 2>/dev/null
groupdel group2 2>/dev/null

userdel user1 2>/dev/null
userdel user2 2>/dev/null
userdel user3 2>/dev/null
userdel user4 2>/dev/null

sudo rm it* It* ist* list* 2>/dev/null
sudo rm -r d_copie1 dossierv1 rep1 rep2 2>/dev/null
echo "Reset OK"
