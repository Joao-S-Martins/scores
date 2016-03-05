# scores
Musical writings

###### List commands to rename files
ls | while read -r FILE; do echo mv -v \"$FILE\" `echo \"$FILE\" | sed 's/_/ /g' | sed 's/-/ - /g'`; done

###### Build from the command line
find *.mscz -exec /Applications/MuseScore\ 2.app/Contents/MacOS/mscore -o {}.pdf {} \;
find *.mscz -exec /Applications/MuseScore\ 2.app/Contents/MacOS/mscore -P -o {}.pdf {} \;

