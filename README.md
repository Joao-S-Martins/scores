# Scores
Musical writings

### License
<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" /></a>

These works are licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License</a>.

Licenses are applied to the works in their directory and all sub-directories, except for any sub-directory which contains its own license statement, in which case that license shall apply to works in that directory and its sub-directories.

#### Tools
##### [MuseScore 2](https://musescore.org/)
MuseScore is an [open source](https://github.com/musescore/MuseScore) and [fre](https://musescore.org/)e music notation software.

##### Lame MP3 Encoder
Super-Fat Universal Binary of the LAME 3.98.3 library for Mac OS X 10.5 PPC, PPC64, i386 and X86_64 architectures. Compiled by and distrubed by [Nuclear Pixel](http://nuclearpixel.com/blog/2010-03-20_lame_3.98.3_universal_for_mac_osx_10.5/).

###### Rename files
ls | while read -r FILE; do echo mv -v \"$FILE\" `echo \"$FILE\" | sed 's/_/ /g' | sed 's/-/ - /g'`; done

###### Build from the command line, but not individually extracted parts
find . -name *.mscz | while read -r FILE; do /Applications/MuseScore\ 2.app/Contents/MacOS/mscore -o "${FILE/\.mscz/}.pdf" "$FILE";  /Applications/MuseScore\ 2.app/Contents/MacOS/mscore --export-score-parts -o "${FILE/\.mscz/} - Score and Parts.pdf" "$FILE"; /Applications/MuseScore\ 2.app/Contents/MacOS/mscore -o "${FILE/\.mscz/}.mid" "$FILE"; /Applications/MuseScore\ 2.app/Contents/MacOS/mscore -o "${FILE/\.mscz/}.xml" "$FILE"; /Applications/MuseScore\ 2.app/Contents/MacOS/mscore -o "${FILE/\.mscz/}.mp3" "$FILE"; done
