#!/bin/bash

if [ -z $CONFIG ]; then source config.sh ; fi

function make_readme_file() {

	if [[ $1 ]]; then
		local thefile=$1
	else
		local thefile=README.md
	fi

	if [[ $2 ]]; then
		local thedir=$2
	else
		local thedir=./md
	fi


files=(sugerencia instrumentacion)
titelize "$TITLE" > $thefile
for i in ${files[*]} ; do cat $thedir/$i.md >> $thefile; sep >> $thefile; done

instr=(iniciadores no_afinar seguir_no_seguir parentesis viola finale)
subtitelize "INSTRUCCIONES" >> $thefile
for i in ${instr[*]} ; do cat $thedir/$i.md >> $thefile; sep >> $thefile; done

indic=(ubicacion iluminacion dinamica_y_duracion partitura pista_electronica final_de_la_obra)
subtitelize "INDICACIONES GENERALES" >> $thefile
for i in ${indic[*]} ; do cat $thedir/$i.md >> $thefile; sep >> $thefile; done

cosas=(cosas_para_viola cosas_para_pista cosas_para_todos)
subtitelize "COSAS" >> $thefile
for i in ${cosas[*]} ; do cat $thedir/$i.md >> $thefile; sep >> $thefile; done

}
