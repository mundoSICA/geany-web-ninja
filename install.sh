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

# Modo de instalación:

# bash < <(curl -s https://raw.github.com/mundoSICA/geany-web-ninja/master/install.sh)


geany_path=`which geany`
if [ "${geany_path}" = "" ]
then
	red="\e[0;31m"
	END='\e[0m'
	echo -e "${red}Por favor instale previamente el geany${END}"
	echo "sudo apt-get install geany"
	exit 1
fi

#Descargando archivos
function descargar
{
	url="https://github.com/mundoSICA/geany-web-ninja/archive/master.zip";
	wget $url -O /tmp/geany_web_ninja.zip
}

function descompactar_instalar
{
	#Descomprimimos
	unzip  /tmp/geany_web_ninja.zip -d /tmp/geany_web_ninja/
	#Copiamos archivos de configuración
	if [ ! -d "$HOME/.config/geany/" ]; then
		  # Control will enter here if $DIRECTORY doesn't exist.
		 mkdir -p "$HOME/.config/geany/"
	fi
	cp -r  /tmp/geany_web_ninja/geany-web-ninja-master/geany/* "$HOME/.config/geany/"
	#Borramos los archivos
	rm -f  /tmp/geany_web_ninja.zip
	rm -fr /tmp/geany_web_ninja/
}

descargar;
descompactar_instalar;
zenity --info --text="La instalacion ha concluido de forma exitosa"
exit 0;
