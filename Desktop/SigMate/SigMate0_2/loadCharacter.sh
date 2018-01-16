while :
do
clear
printf %b "CP/M VER 2.2
A>LOAD SIGMATE.ASM
-========--========--========--========++========--========--========--========-
                                                                               
 .|'''|                                   ||                     .''',     ''|,
 ||       ''                              ||                     |   |    '  ||
 \`|'''|,  ||  .|''|, '||),,(|,   '''|.  ''||''  .|''|,    '||''| |   |      .|'
  .   ||  ||  ||  ||  || || ||  .|''||    ||    ||..||     ||    |   |     //   
  |...|' .||. \`|..|| .||    ||. \`|..||.   \`|..' \`|...     .||.   \`,,,' .. ((...
                  ||                                                           
               \`..|'                                                              
                                                                                  
                                       +-+  +-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ 
                                       |A|  |S|i|g|m|a|t|a| |c|o|m|p|a|n|i|o|n| 
                                       +-+  +-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+
                                                                                
-========--========--========--========++========--========--========--========-
   !! ERR401 - ACCESS FORBIDDEN !!                 
UNEXPECTED END OF ASM FILE--SIGMATE.ASM
A>USER 0
A>PIP PUN:=NUL:,$USER,SIGMATE.ASM,EOF:,NUL:\n"

read -p "ENTER USERNAME >" keyInput
#keyInput=default

if [ ! -f saves/${keyInput} ]
then
printf %b "USER DOES NOT EXIST -- CREATE USER? (Y/N)"
read yesNo
	if [ $yesNo = "Y" ]
	then
printf %b "CREATING USER..."
printf %b "Full Name: "
read yesNo
playerName=$yesNo
printf %b "Aggression: "
read yesNo
aggression=$yesNo
printf %b "Guile: "
read yesNo
guile=$yesNo
printf %b "Judgement: "
read yesNo
judgement=$yesNo
printf %b "Valor: "
read yesNo
valor=$yesNo

printf %b "GENERATING USER DATAFILE..."
printf %b "$playerName\n$aggression\n$guile\n$judgement\n$valor" >> saves/${keyInput}
break
	else
printf %b "USER NOT CREATED-- EXITING PROCESS"
	fi

else
playerName=$(head -1 saves/${keyInput})
aggression=$(head -2 saves/${keyInput})
aggression=${aggression: -1} #1 for \n
judgement=$(head -4 saves/${keyInput})
judgement=${judgement: -1} #1 for \n, 2 for aggression value
guile=$(head -3 saves/${keyInput})
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
