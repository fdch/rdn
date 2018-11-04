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


files=(sugerencia instrumentacion pista_electronica circuitura)
titelize "$TITLE" > $thefile
for i in ${files[*]} ; do cat $thedir/$i.md >> $thefile; sep >> $thefile; done

inici=(iniciadores tecnicas alturas no_afinar)
subtitelize "INICIADORES" >> $thefile
for i in ${inici[*]} ; do cat $thedir/$i.md >> $thefile; sep >> $thefile; done

relac=(relaciones seguir no_seguir)
subtitelize "RELACIONES"	>>	$thefile
for i in ${relac[*]} ; do cat $thedir/$i.md >> $thefile; sep >> $thefile; done

instr=(parentesis viola finale)
for i in ${instr[*]} ; do 
	subtitelize $i >> $thefile
	cat $thedir/$i.md >> $thefile
	sep >> $thefile
done

indic=(ubicacion iluminacion dinamica_y_duracion partitura)
subtitelize "INDICACIONES GENERALES" >> $thefile
for i in ${indic[*]} ; do cat $thedir/$i.md >> $thefile; sep >> $thefile; done

cosas=(cosas_para_viola cosas_para_pista cosas_para_todos)
subtitelize "COSAS" >> $thefile
for i in ${cosas[*]} ; do cat $thedir/$i.md >> $thefile; sep >> $thefile; done

}
