#!/bin/sh
FLYDAY="flyday"
rm FLYDAY.css
for file in css/*.css
do
    NAME=`echo "$file"|rev|cut -c 5-|rev`
    echo "@-moz-document url-prefix("https://boms.t5.fi/$NAME") {" >> $FLYDAY.css
    cat $file >> $FLYDAY.css
    echo "}" >> $FLYDAY.css
done
