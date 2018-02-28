#!/bin/sh
# for i in 1 2 3 4 5
# do
#     echo "looping ... number $i"
# done

# for i in hello 1 /* 2 goodbye
# do
#     echo "loop i is set to $i"
# done

# INPUT_STRING=HELOO
# while [ "$INPUT_STRING" != 'bye' ]
# do
#     echo "please type something in (bye to quit)"
#     read INPUT_STRING
#     echo "You typed: $INPUT_STRING"
# done

# while :
# do
#     echo "please type in something in (^C to quit)"
#     read INPUT_STRING
#     echo "You typed: $INPUT_STRING"
# done

# while read f
# do
#   case $f in
# 	hello)		echo English	;;
# 	howdy)		echo American	;;
# 	gday)		echo Australian	;;
# 	bonjour)	echo French	;;
# 	"guten tag")	echo German	;;
# 	*)		echo Unknown Language: $f
# 		;;
#    esac
# done < languages.sh

# while f=`line`
# do
#   .. process f ..
# done < languages.sh

# export i=THIS_IS_A_BUG
# grep "/img/" ./pages/1.10/gui/components/index.md  (temp file)
# grep finds things whthin a file ( the file will be tempfile)
# if I pass it a regex that matches this (/1.10/img/this/folder) by searching (/.../img/..)
# I can pipe it to sed, which will ident.. that, and will replace with (.../img/...)
# I can't however find a way to write the regex.. to try it  .. or grep ,, whichever i think they use the same
# I think that's the easiest way to fix it I just can't .. make it

#grep \'img\' ./languages.sh | xargs sed -i '' "s/img/\1/g"
# find the string whithin a file and save to variable
# pass the variable into sed and remove first character
#$IMAGE="$(find /(\/.*.png)/ .languages.sh | sed -i -E 's/^\///')"
#sed -i -E 's/(\/.*.png)/^//g' ./languages.sh

sed -i -- 's/\/\(.*.png\)/\1/g;s/\/\(.*.jpg\)/\1/g;s/\/\(.*.jpeg\)/\1/g;s/\/\(.*.gif\)/\1/g' ./languages.sh
# OLD_URL=grep "/img/" .languages.sh
# save that url only from the () and then delete the first /
# regex for ()
# while read -r line;do case "$line" in *someregex*) echo "$line";;esac;done <file > t && mv t file

# OLD_URL="${OLD_URL} ${this}"
# echo ${OLD_URL}