#!/bin/bash

# make html audio units

if [ -z $CONFIG ]; then source config.sh ; fi

CSS=../css/pandoc.css

function make_audio_divs() {
	local index=../audio/index.html
	echo "<h1>All Audio</h1>" > $index

	for i in ../puredata/audio/*.mp3 ; do 
		basefile=`basename $i .mp3`
		target=../audio/$basefile.html
		tg div "`audioTag "$i"`" $basefile 	> $target
		echo "<h3>$basefile</h3>" 			>> $index
		echo 								>> $index
		cat $target 						>> $index 
		reformat_html $target $target
	done

	reformat_html $index $index

}


