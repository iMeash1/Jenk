#!/bin/bash

# בדיקת פרמטר
if [ -z "$N" ]; then
    echo "Error: Missing parameter N"
    exit 1
fi

# חישוב סדרת פיבונאצ'י
a=0
b=1
echo "<html><body><h2>Fibonacci Sequence:</h2><p>" > output.html
for (( i=0; i<N; i++ ))
do
    echo -n "$a " >> output.html
    fn=$((a + b))
    a=$b
    b=$fn
done
echo "</p></body></html>" >> output.html

# שמירת הקובץ בפלט Jenkins
mv output.html $WORKSPACE/output.html
