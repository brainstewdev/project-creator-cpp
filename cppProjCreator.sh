#!/bin/bash
if [ "$1" = "" ]; then
	echo "you need to pass the project name as an argument!"
	exit 1
fi
# crea la cartella del progetto
echo 'creating the project folder...'
mkdir $1
echo '	done'
# si sposta nella cartella creata
cd $1
# crea le sottocartelle
#	src
#	include
mkdir src include
# crea il file main.cpp
user=whoami
dateOfCreation=date
comm="${dateOfCreation}\n${user}\n\n#include<iostream>\n\nusing namespace std;\n\nint main() {\n\n}"
echo comm > ./src/Main.cpp
