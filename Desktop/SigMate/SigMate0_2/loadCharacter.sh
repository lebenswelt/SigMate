while :
do

read -p "ENTER USERNAME >" keyInput
#keyInput=default

if [ ! -f saves/${keyInput} ]
then
printf %b "USER DOES NOT EXIST -- PRESS RETURN"
read keyInput

else
playerName=$(head -1 saves/${keyInput})
aggression=$(head -2 saves/${keyInput})
aggression=${aggression: -1} #1 for \n
judgement=$(head -3 saves/${keyInput})
judgement=${judgement: -1} #1 for \n, 2 for aggression value
guile=$(head -4 saves/${keyInput})
guile=${guile: -1}
valor=$(head -5 saves/${keyInput})
valor=${valor: -1}

#echo $playerName
#echo $aggression
#echo $judgement
#echo $guile
#echo $valor

break
fi

done
