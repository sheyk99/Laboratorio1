#!/bin/bash 

#Recibe los strings
read newuser
read newgroup

#revisar si el usuario existe o crearlo
grep $newuser /etc/passwd
if [ $? = 1 ]; then
	sudo adduser $newuser
else
	echo "ese usuario ya existe"
fi

#revisar si el grupo existe o crearlo
grep $newgroup /etc/group
if [ $? = 1 ]; then
	sudo addgroup $newgroup
else 
	echo "ese grupo ya existe"
fi


sudo usermod -a -G $newgroup vboxuser
sudo usermod -a -G $newgroup $newuser

#permisos de ejecucion
sudo chown vboxuser:$newgroup ejercicio1.sh


