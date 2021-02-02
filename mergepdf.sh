#!/bin/sh
#need poppler to execute

files=()

echo "Searching for files"
echo

for file in ./*; do
	#echo $file
	fileBasename=$(basename "$file")
	if [ ${fileBasename:0:1} = "0" ]; then
		files+="$fileBasename "
		echo "- "$fileBasename	
	fi
done

echo $files
echo
echo "Listed files getting merged"

pdfunite $files skripte_merged.pdf

echo "Files merged successfully"

