#!/bin/bash

if [ -z $CONFIG ]; then source config.sh ; fi

CSS=../css/pandoc.css

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

files=(sugerencia instrumentacion dinamica_y_duracion pista_electronica circuitura)
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

indic=(ubicacion iluminacion partes)
subtitelize "INDICACIONES GENERALES" >> $thefile
for i in ${indic[*]} ; do cat $thedir/$i.md >> $thefile; sep >> $thefile; done

cosas=(cosas_para_viola cosas_para_pista cosas_para_todos)
subtitelize "COSAS" >> $thefile
for i in ${cosas[*]} ; do cat $thedir/$i.md >> $thefile; sep >> $thefile; done


pI=(./I     ${ALLPARTS[0]} )
pII=(./II   ${ALLPARTS[1]} )
pIII=(./III ${ALLPARTS[2]} )
pIV=(./IV   ${ALLPARTS[3]} )

ext=\_part.png

fn=${pI[0]}/index.md
hn=${pI[0]}/index.html
titelize "${ALLPARTS[0]}" > $fn
echo "![](../example/${pI[1]}$ext)" >> $fn 
sep >> $fn
cat "./md/tecnicas.md" >> $fn
sep >> $fn
subtitelize "PARENTESIS" >> $fn
cat "./md/parentesis.md" >> $fn
sep >> $fn
pandoc -f markdown -t html5 -o $hn $fn
FIRST=`cat $hn`
tg div "`audioTag "../puredata/audio/rec-0-1.mp3"`" "rec-0-1" > $hn
echo "$FIRST" >> $hn
reformat_html $hn $hn
rm $fn

fn=${pII[0]}/index.md
hn=${pII[0]}/index.html
titelize "${ALLPARTS[1]}" > $fn
echo "![](../example/${pII[1]}$ext)" >> $fn 
sep >> $fn
cat "./md/tecnicas.md" >> $fn
sep >> $fn
subtitelize "PARENTESIS" >> $fn
cat "./md/parentesis.md" >> $fn
sep >> $fn
pandoc -f markdown -t html5 -o $hn $fn
FIRST=`cat $hn`
tg div "`audioTag "../puredata/audio/rec-0-2.mp3"`" "rec-0-2" > $hn
echo "$FIRST" >> $hn
reformat_html $hn $hn
rm $fn

fn=${pIII[0]}/index.md
hn=${pIII[0]}/index.html
titelize "${ALLPARTS[2]}" > $fn
echo "![](../example/${pIII[1]}$ext)" >> $fn 
sep >> $fn
cat "./md/tecnicas.md" >> $fn
sep >> $fn
subtitelize "INDICACIONES ESPECIALES" >> $fn
cat "./md/viola.md" >> $fn
sep >> $fn
subtitelize "PARENTESIS" >> $fn
cat "./md/parentesis.md" >> $fn
sep >> $fn
pandoc -f markdown -t html5 -o $hn $fn
FIRST=`cat $hn`
tg div "`audioTag "../puredata/audio/rec-0-3.mp3"`" "rec-0-3" > $hn
echo "$FIRST" >> $hn
reformat_html $hn $hn
rm $fn

fn=${pIV[0]}/index.md
hn=${pIV[0]}/index.html
titelize "${ALLPARTS[3]}" > $fn
echo "![](../example/${pIV[1]}$ext)" >> $fn 
sep >> $fn
cat "./md/tecnicas.md" >> $fn
sep >> $fn
subtitelize "PARENTESIS" >> $fn
cat "./md/parentesis.md" >> $fn
sep >> $fn
pandoc -f markdown -t html5 -o $hn $fn
FIRST=`cat $hn`
tg div "`audioTag "../puredata/audio/rec-0-4.mp3"`" "rec-0-4" > $hn
echo "$FIRST" >> $hn
reformat_html $hn $hn
rm $fn

}
