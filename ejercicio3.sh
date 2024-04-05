#!/bin/bash



#revisa a cuales variables corresponde cada posible parametro recibido
if [ $1 = "-h" ]; then
	echo "Instrucciones: Date: Ingrese -d seguido con un espacio de la fecha en formato a;o-mes-dia (2024-03-01) para un informe completo de esa fecha.
	Mode: Ingrese -m seguido con un espacio del modo de funcionamiento del informe; servidor_web, base_de_datos, proceso_batch, aplicacion, monitoreo
	Date and mode: Ingrese -2 seguido por un espacio por -d seguido de la fecha deseada seguido por -m seguido del modo buscado para obtener un informe de la fecha y modo especificados"
	
elif [ $1 = "-d" ]; then
	echo "date"
	cat log_$2.log

elif [ $1 = "-m" ]; then
	echo "mode"
	for i in log_2024-03-01.log log_2024-03-02.log log_2024-03-03.log log_2024-03-04.log log_2024-03-05.log log_2024-03-06.log log_2024-03-07.log log_2024-03-08.log log_2024-03-09.log log_2024-03-10.log log_2024-03-11.log log_2024-03-12.log log_2024-03-13.log log_2024-03-14.log log_2024-03-15.log log_2024-03-16.log log_2024-03-17.log log_2024-03-18.log log_2024-03-19.log log_2024-03-20.log log_2024-03-21.log log_2024-03-22.log log_2024-03-23.log log_2024-03-24.log log_2024-03-25.log log_2024-03-26.log log_2024-03-27.log log_2024-03-28.log log_2024-03-29.log log_2024-03-ls.log; do
        cat $i | grep $2
done

elif [ $1 = "-2" ]; then
	echo "date and mode"
	cat log_$3.log | grep $5
else
	echo "opcion no disponible"
fi

