#!/bin/bash
#This script is written by nerdacs
#This script is designed to help eash the transition in suptitles when going from SD to HD.
#This file may be modified to enhance its usefulnes.
#It is designed to take all files ending in *.xml in the working directory and change the linewidth.
for subtitle in *.xml
do
	sed -i '' -e '/<parameterid>linewidth<\/parameterid>/{
		N;
		N;
		N;
		N;
		s/<value>.*<\/value>/<value>12<\/value>/;}' "$subtitle"
	echo "$subtitle has been fixed"
done
echo "All files have been fixed"
