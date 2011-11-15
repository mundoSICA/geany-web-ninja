#!/bin/bash
#
#Script auxiliar para la implemetacion de estilos en el geany.
#
#

#grep -REHni "^[a-z]*=0x[0-9a-f]{6};0x[0-9a-f]{6};[a-z]{4,5};[a-z]{4,5}" .
#grep -RHni "^[a-z]*=0x[0-9a-f]{6}"  .

function estilos_no_implementados()
{
	export dest=./geany/filedefs/
	for file in `ls /usr/share/geany/filetypes.*`
	do
		filename="$dest`echo $file | grep -Eo '[^/]*$'`";
		echo $file;
		echo $filename;
		for line in  `grep -Ehi "^[a-z]*=0x[0-9a-f]{6};0x[0-9a-f]{6};[a-z]{4,5};[a-z]{4,5}" $file | cut -d= -f1`;
		do
			echo -e "    $line";
		done
	done;
}

estilos_no_implementados
