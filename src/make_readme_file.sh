#!/bin/bash
files=(sugerencia instrumentacion)
echo "

# RELACIONES DE NUBE

" > ../README.md
for i in ${files[*]} ; do
	cat ../md/$i.md >> ../README.md
	echo "
	
---

"					>> ../README.md
done

instrucciones=(iniciadores no_afinar seguir_no_seguir parentesis viola finale)
echo "

## INSTRUCCIONES

" >> ../README.md
for i in ${instrucciones[*]} ; do
	cat ../md/$i.md >> ../README.md
	echo "
	
---

"					>> ../README.md
done





indicaciones=(ubicacion iluminacion dinamica_y_duracion partitura pista_electronica final_de_la_obra)
echo "

## INDICACIONES GENERALES

" >> ../README.md
for i in ${indicaciones[*]} ; do
	cat ../md/$i.md >> ../README.md
	echo "
	
---

"					>> ../README.md
done

cosas=(cosas_para_viola cosas_para_pista cosas_para_todos)
echo "

## COSAS

" >> ../README.md
for i in ${cosas[*]} ; do
	cat ../md/$i.md >> ../README.md
	echo "
	
---

"					>> ../README.md
done
