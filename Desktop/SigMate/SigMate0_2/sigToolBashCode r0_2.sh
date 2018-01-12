#init and setup

#there's gotta be better way to do this.
cleanupLines=27
cleanupColumns=80

if [ $LINES -ne 27 ]
then
cleanupLines=$LINES
LINES=27
fi
if [ $COLUMNS -ne 80 ]
then
cleanupColumns=$COLUMNS
COLUMNS=80
fi

#generate a psuedorandom number
#random=$(awk -v min=5 -v max=10 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
#d6=$(awk -v min=1 -v max=6 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
#d10=$(awk -v min=1 -v max=10 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')

#setfont /usr/share/consolefonts/Lat7-Terminus28x14.psf

#Setting fieldsplitting, maybe a bad idea but it works so far.
IFS=

#COLOR concept from stackoverflow.com/
#questions/4332478/read-the-current-text-color-in-a-xterm/4332530#4332530
#sample usage follows
#printf "%40s\n" "${RED}This text is red${NORMAL}"
BLUE=$(tput setaf 4)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
RED=$(tput setaf 1)
BLINK=$(tput blink)
NORMAL=$(tput sgr0)

# Active Player Variables
playerName="$USER"
aggression=5
judgement=3
guile=4
valor=2

# COIN tracker int from 1 - 10 where 1 is bad and 10 is good
intlRep=2
localRep=5
resistRep=9

#SIG tracker - 0 to 4 where 0 is down and 3 is ults-enabled
signalState=0

#Message System for persistance after redraw
#25 chars so far? Maybe 40.
message="                                       "

#player storage system debug
#echo "debug"
#echo $playerName
#echo $aggression
#echo $judgement
#echo $guile
#echo $valor
#echo $intlRep
#echo $localRep
#echo $resistRep
#echo $signalState

. ./loadCharacter.sh

#main while loop
while :
do

#draw Screen - the preceedng '.'executes in the same shell so it shares vars.
. ./screenDraw.sh

read keyInput
message="                                       "

if [ $keyInput = "help" ]
then
clear
cat dossiers/help
read -p "PRESS RETURN . . . "
fi

#for debugging
if [ $keyInput = "+" ]
then
if [ $signalState -lt 3 ]
then
signalState=$(($signalState+1))
message="     The signal is boosted!                    "
fi 
elif [ $keyInput = "-" ]
then
if [ $signalState -gt 0 ]
then
signalState=$(($signalState-1))
message="     The signal is dropping!                   "
fi
fi

#output dossiers
if [[ $keyInput = "dossier "* ]]
then
#scratchInt=(${#keyInput}-8)
#length of string
#string extraction of negative (length of string - 8)
clear
cat dossiers/${keyInput: -(${#keyInput}-8)}
read -p "PRESS RETURN . . . "
fi

if [ $keyInput = "~" ]
then
break
elif [ $keyInput = "a" ]
then
message="     roll aggression                   " #Aggression check
elif [ $keyInput = "g" -o $keyInput = "s" ]
then
message="     roll guile                        " #Guile check
elif [ $keyInput = "j" -o $keyInput = "d" ]
then
message="     roll judgement                    " #Judgement check 
elif [ $keyInput = "v" -o $keyInput = "f" ]
then
message="     roll virtue                       " #Virtue check 

elif [ $keyInput = "/" ] #debug command
then
d10=$(awk -v min=1 -v max=10 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
message=$d10  #debug

fi

#end main loop
done

#cleanup
LINES=$cleanupLines
COLUMNS=$cleanupColumns
