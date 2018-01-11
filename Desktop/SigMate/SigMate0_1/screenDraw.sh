#sub drawScreen:
#Line 1 start
clear
#80col display header/footer
printf "%b" "-========--========--========--========++========--========--========--========-"
printf "%b" "\n"
#Line 1 end

#line 2 start
printf "%b" "                                       ++                                       "
printf "%b" "\n"
#line 2 end

#line 3 start
printf "%b" "         "
# original line follows-- print "         NAMEXXRUNSFOR25CHARACTERS"
printf "%b" $playerName


#badcode follows:

#samplecode for counting 's' in a string follows:
# x="This is a test"
# y="${x//[^s]}"
# echo "$y"
# echo "${#y}"

#Hardcoded during firstpass testing
whitespace=(25-9)

for ((counter = $whitespace ; counter > 0; counter--))
do
printf "%b" " "
done
#end badcode


printf "%b" "     ++  "

#Int'l rep display

 # hardcode for debug
  #printf "%b" "Û Û Û Û ² Û Û Û Û Û"

for ((counter = 1 ; counter < 11; counter=$(($counter+1)) ))
do
printf "%b" " "
if [ $counter -eq $intlRep ]
 then
printf "%b" "X"
 elif [ $counter -gt 7 ]
  then 
printf "%b" "${GREEN}I${NORMAL}"
#  echo -e "\033[33m ²" #set echo green
 elif [ $counter -lt 4 ]
  then
printf "%b" "${RED}$counter${NORMAL}"
#  echo -e "\033[31m ²" #set echo red
 else
printf "%b" "${YELLOW}$counter${NORMAL}"
# echo -e "\033[0m ²" #set echo preferredTerminalColor
fi
#printf "%b" "debug counter == $counter, [$counter -eq $intlRep]"
done

printf "%b" " INT'L POPULATION"
printf "%b" "\n"
#line 3 end

#line 4 start
printf "%b" "                                       ++                                       "
printf "%b" "\n"
#line 4 end

#line 5 start
printf "%b" "                                       ++  "

#local rep display
for ((counter = 1 ; counter < 11; counter=$(($counter+1)) ))
do
printf "%b" " "
if [ $counter == $localRep ]
 then
printf "%b" "X"
 elif [ $counter -gt 7 ]
  then 
printf "%b" "${GREEN}I${NORMAL}"
#  echo -e "\033[33m ²" #set echo green
 elif [ $counter -lt 4 ]
  then
printf "%b" "${RED}$counter${NORMAL}"
#  echo -e "\033[31m ²" #set echo red
 else
printf "%b" "${YELLOW}$counter${NORMAL}"
# echo -e "\033[0m ²" #set echo preferredTerminalColor
fi
#printf "%b" "debug counter == $counter, [$counter -eq $intlRep]"
done
printf "%b" " LOCAL POPULATION"
printf "%b" "\n"

#Line 5 end

#line 6 start
printf "%b" "           .::::::::::::::::.          ++                                       "
printf "%b" "\n"
#Line 6 end

#line 7 start
printf "%b" "          ::                ::         ++  "

#Resistance forces rep display
for ((counter = 1 ; counter < 11; counter=$(($counter+1)) ))
do
printf "%b" " "
if [ $counter == $resistRep ]
 then
printf "%b" "X"
 elif [ $counter -gt 7 ]
  then 
printf "%b" "${GREEN}I${NORMAL}"
#  echo -e "\033[33m ²" #set echo green
 elif [ $counter -lt 4 ]
  then
printf "%b" "${RED}$counter${NORMAL}"
#  echo -e "\033[31m ²" #set echo red
 else
printf "%b" "${YELLOW}$counter${NORMAL}"
# echo -e "\033[0m ²" #set echo preferredTerminalColor
fi
#printf "%b" "debug counter == $counter, [$counter -eq $intlRep]"
done
printf "%b" " RESISTANCE FORCE"
printf "%b" "\n"

#Line 7 end

#Line 8 Start
printf "%b" "      ÉÍÍÍ::                ::         ++                                       "
printf "%b" "\n"
#Line 8 End
#Line 9 Start
printf "%b" "      º   ::  TI-4000 ${RED}C${GREEN}O${BLUE}L${GREEN}O${RED}R${NORMAL} ::ÍÍÍÍÍ»   ++========--========--========--========-"
printf "%b" "\n"
#Line 9 End
#Line 10 Start
printf "%b" "      º   ::                ::     º   ++                                       "
printf "%b" "\n"
#Line 10 End

#Line 11 Start
printf "%b" "     É¼   ::        750MHz  ::Í»   º   ++          THE SIGNAL IS . . .    "
if [ $signalState -gt 0 ]
then
printf "%b" "UP!   "
else
printf "%b" "      "
fi
printf "%b" "\n"
#Line 11 End
#Line 12 Start
printf "%b" "     º    ::                :: º   º   ++                                       "
printf "%b" "\n"
#Line 12 End

#Line 13 Start
printf "%b" "     º   É::                :: º   º   ++"
if [ $signalState -gt 0 ]
then
printf "%b" "                                       "
else
printf "%b" "  DDDDDDDD    OOOO   WW    WW NN    NN "
fi
printf "%b" "\n"
#Line 13 End

#Line 14 Start
printf "%b" "     º   º::                :: º   º   ++"
if [ $signalState -eq 0 ]
then
printf "%b" "   DD   DDD  OO  OO  WW    WW NNN   NN "
else
printf "%b"  "    \`:/+++/:\`        "
if [ $signalState -gt 2 ]
then
printf "%b" "è²è"
else
printf "%b" " · "
fi
printf "%b" "               "
fi
printf "%b" "\n"
#Line 14 End

#Line 15 Start
printf "%b" "     º   º \`::::::::::::::::'  º   º   ++"
if [ $signalState -eq 0 ]
then
printf "%b" "   DD    DD OO    OO WW    WW NNN   NN "
else
printf "%b" "   -+/+---+/+-       "
if [ $signalState -gt  2 ]
then
printf "%b" " ² "
else
printf "%b" " º "
fi
printf "%b" "  Subroutines "
fi
printf "%b" "\n"
#Line 15 End

#Line 16 Start
printf "%b" "     º   º                     º  É¼   ++"
if [ $signalState -eq 0 ]
then
printf "%b""   DD    DD OO    OO WW    WW NNNN  NN "
else

printf "%b" "   ++:.   \`/++       "
if [ $signalState -gt 2 ]
then
printf "%b" " ² "
else
printf "%b" " º "
fi
printf "%b" "               "
fi
printf "%b" "\n"
#Line 16 End

#Line 17 Start
printf "%b" "     º   ÓÄÄ Aggression ("
printf "%b" $aggression
printf "%b" ")    º  º    ++"
if [ $signalState -eq 0 ]
then
printf "%b" "   DD    DD OO    OO WW    WW NNNN  NN "
else
printf "%b" "   ///-.-.-///     -=="
if [ $signalState -gt 2 ]
then
printf "%b" "²"
else
printf "%b" "º"
fi
printf "%b" "=====--========-"
fi
printf "%b" "\n"
#Line 17 End

#Line 18 Start
printf "%b" "     º                         º  º    ++"
if [ $signalState -eq 0 ]
then
printf "%b" "   DD    DD OO    OO WW    WW NNNNN NN "
else
printf "%b" "    -.\`NmM.\`-        "
if [ $signalState -gt 1 ]
then
printf "%b" " ² "
else
printf "%b" " º "
fi
printf "%b" "               "
fi
printf "%b""\n"
#Line 18 End

#Line 19 Start
printf "%b" "     ÓÄÄÄÄÄÄ Guile      ("
printf "%b" $guile
printf "%b" ")    º  º    ++"
if [ $signalState -eq 0 ]
then
printf "%b" "   DD    DD OO    OO WW WW WW NN NN NN "
else
printf "%b" "      /M.ms          "
if [ $signalState -gt 1 ]
then
printf "%b" "è²è"
else
printf "%b" " º "
fi
printf "%b" "  Blade Servers"
fi
printf "%b" "\n"
#Line 19 End

#Line 20 Start
printf "%b" "                               º  º    ++"
if [ $signalState -eq 0 ]
then
printf "%b" "   DD    DD OO    OO WW WW WW NN NNNNN "
else 
printf "%b" "      dNhNN          "
if [ $signalState -gt 1 ]
then
printf "%b" " ² "
else
printf "%b" " º "
fi
printf "%b" "               "
fi
printf "%b" "\n"
#Line 20 End

#Line 21 Start
printf "%b"  "             Judgement  ("
printf "%b"  $judgement
printf "%b"  ") ÄÄÄ½  º    ++"
if [ $signalState -eq 0 ]
then
printf "%b"  "   DD    DD OO    OO WW WW WW NN NNNNN "
else 
printf "%b"  "     .Md:hM/       -=="
if [ $signalState -gt 1 ]
then
printf "%b"  "²"
else
printf "%b"  "º"
fi
printf "%b"  "=====--========-"
fi
printf "%b" "\n"
#Line 21 End

#Line 22 Start
printf "%b"  "                                  º    ++"
if [ $signalState -eq 0 ]
then
printf "%b"  "   DD    DD OO    OO WWWWWWWW NN  NNNN "
else
printf "%b"  "     sNhshmh         "
if [ $signalState -gt 0 ]
then
printf "%b"  " ² "
else
printf "%b"  " º "
fi
printf "%b"  "               "
fi
printf "%b"  "\n"
#Line 22 End

#Line 23 Start
printf "%b" "             Valor      ("
printf "%b" $valor
printf "%b" ") ÄÄÄÄÄÄ½    ++"
if [ $signalState -eq 0 ]
then
printf "%b" "   DD   DDD  OO  OO  WWW  WWW NN  NNNN "
else 
printf "%b" "    \`Nd/./hM.        "
if [ $signalState -gt 0 ]
then
printf "%b" "è²è"
else
printf "%b" " º "
fi
printf "%b" "  Power Modules"
fi
printf "%b" "\n"
#Line 23 End

#Line 24 Start
printf "%b" "                                       ++"
if [ $signalState -eq 0 ]
then 
printf "%b" "  DDDDDDDD    OOOO    WW  WW  NN   NNN "
else
printf "%b" "    /d/   +ho        "
if [ $signalState -gt 0 ]
then
printf "%b" " ² "
else
printf "%b" " ½ "
fi
printf "%b" "               "
fi
printf "%b" "\n"
#Line 24 End

#Line25 - Input line
printf "%b" $message ">>"
