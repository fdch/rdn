#!/bin/bash

files=(title sugerencia instrumentacion iniciadores seguir_no_seguir parentesis viola finale no_afinar indicaciones cosas_para_viola cosas_para_pista cosas_para_todos)

echo > ../README.md
for i in ${files[*]} ; do
	cat ../md/$i.md >> ../README.md
	echo "
	
---

"					>> ../README.md
done
