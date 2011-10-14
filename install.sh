#!/bin/bash
# @autor:        fitorec <programacion@mundosica.com>
# @descripcion:	Instala la configuracion del geany tu maquina con tu usuario por defecto
# @copyright:    2011 SICÁ (tm)
# @package:      geanyWebNinja
# @license MIT
# @url http://mundosica.github.com/geany-web-ninja
# @url-base http://www.geany.org/Download/Extras
# @version 0.0.1
#  _   _   _   _   _   _   _   _   _   _   _   _   _  
# / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ 
#( m | u | n | d | o | s | i | c | a | . | c | o | m )
# \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ 
#
#             . --- .
#           /        \
#          |  O  _  O |
#          |  ./   \. |
#          /  `-._.-'  \
#        .' /         \ `.
#    .-~.-~/           \~-.~-.
#.-~ ~    |             |    ~ ~-.
#`- .     |             |     . -'
#     ~ - |             | - ~
#         \             /
#       ___\           /___
#      ~;_  >- . . -<  _i~
#          `'         `'
##########################################################################################

geany_path=`which geany`
if [ "${geany_path}" = "" ]
then
	red="\e[0;31m"
	END='\e[0m'
	echo -e "${red}Por favor instale previamente el geany${END}"
	echo "sudo apt-get install geany"
	exit 1
fi

#Instalando Dia y los paquetes necesarios para trabajar en sica
cp -R ./geany $HOME/.config/geany

zenity --info --text="La instalacion ha concluido de forma exitosa"

