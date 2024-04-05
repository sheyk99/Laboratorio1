#!/bin/bash

archivo=$1

#revisa si el fichero existe y guarda los permisos en la variable o sino da un error y codigo de salida 1
if [ -f "$archivo" ]; then
	permisos=$( stat -c "%A%" $archivo )
else
	echo "Error: $archivo no existe"
	exit 1
fi

echo $permisos
#la funcion almacena las variables con los permisos y los clasifica
get_permissions_verbose() {
	user=$( echo $permisos | cut -c 2-4 )
	echo "owner:" $user
	group=$( echo $permisos | cut -c 5-7 )
	echo "group:" $group
	others=$( echo $permisos | cut -c 8-10 )
	echo "others:" $others
	return 1
}

get_permissions_verbose

exit 0

