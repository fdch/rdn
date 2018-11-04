#!/bin/bash

ALLPARTS=(violini violinii viola cello)
WD=6
HI=1

function compile_all_parts() {
for i in ${ALLPARTS[*]}; do
	filename=$i\_part.ly
	echo "
#(set! paper-alist (cons '(\"papersize\" . (cons (* $WD in) (* $HI in))) paper-alist))
\\paper {
  #(set-paper-size \"papersize\")
}
\\header {
  tagline = \"\" 
} 
\\include \"$i.ly\"

\\score {
	\\new Staff \\$i
	\\layout { 
     \\context { 
       \\Staff 
       	\\override TimeSignature #'stencil = #point-stencil
       	} 
 	  }
}
\\version \"2.19.56\"
" > $filename

lilypond -fpng -dresolution=300 $filename

done

}
