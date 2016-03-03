# scores
Musical writings

#### List commands to rename files
ls | while read -r FILE; do echo mv -v \"$FILE\" `echo \"$FILE\" | sed 's/_/ /g' | sed 's/-/ - /g'`; done
