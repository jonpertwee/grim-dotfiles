#!/bin/sh
# Original Posted at http://crunchbang.org/forums/viewtopic.php?pid=126921%23p126921#p126921
# [ESC] character in original post removed here.

#T='gYw'

#echo -e "\n                 40m     41m     42m     43m\
#     44m     45m     46m     47m";

#for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
#           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
#           '  36m' '1;36m' '  37m' '1;37m';
#  do FG=${FGs// /}
#  echo -en " $FGs \033[$FG  $T  "
#  for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
#    do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
#  done
#  echo;
#done
#echo

initializeANSI()
{
 esc="$(echo -en '\e')"

  blackf="${esc}[30m";   redf="${esc}[31m";    greenf="${esc}[32m"
  yellowf="${esc}[33m"   bluef="${esc}[34m";   purplef="${esc}[35m"
  cyanf="${esc}[36m";    whitef="${esc}[37m"

  blackb="${esc}[40m";   redb="${esc}[41m";    greenb="${esc}[42m"
  yellowb="${esc}[43m"   blueb="${esc}[44m";   purpleb="${esc}[45m"
  cyanb="${esc}[46m";    whiteb="${esc}[47m"

  boldon="${esc}[1m";    boldoff="${esc}[22m"
  italicson="${esc}[3m"; italicsoff="${esc}[23m"
  ulon="${esc}[4m";      uloff="${esc}[24m"
  invon="${esc}[7m";     invoff="${esc}[27m"

  reset="${esc}[0m"
}

# note in this first use that switching colors doesn't require a reset
# first - the new color overrides the old one.

#clear

initializeANSI

cat << EOF

 ${yellowf}  ▄███████▄${reset}   ${redf}  ▄██████▄${reset}    ${greenf}  ▄██████▄${reset}    ${bluef}  ▄██████▄${reset}    ${purplef}  ▄██████▄${reset}    ${cyanf}  ▄██████▄${reset}
 ${yellowf}▄█████████▀▀${reset}  ${redf}▄${whitef}█▀█${redf}██${whitef}█▀█${redf}██▄${reset}  ${greenf}▄${whitef}█▀█${greenf}██${whitef}█▀█${greenf}██▄${reset}  ${bluef}▄${whitef}█▀█${bluef}██${whitef}█▀█${bluef}██▄${reset}  ${purplef}▄${whitef}█▀█${purplef}██${whitef}█▀█${purplef}██▄${reset}  ${cyanf}▄${whitef}█▀█${cyanf}██${whitef}█▀█${cyanf}██▄${reset}
 ${yellowf}███████▀${reset}      ${redf}█${whitef}▄▄█${redf}██${whitef}▄▄█${redf}███${reset}  ${greenf}█${whitef}▄▄█${greenf}██${whitef}▄▄█${greenf}███${reset}  ${bluef}█${whitef}▄▄█${bluef}██${whitef}▄▄█${bluef}███${reset}  ${purplef}█${whitef}▄▄█${purplef}██${whitef}▄▄█${purplef}███${reset}  ${cyanf}█${whitef}▄▄█${cyanf}██${whitef}▄▄█${cyanf}███${reset}
 ${yellowf}███████▄${reset}      ${redf}████████████${reset}  ${greenf}████████████${reset}  ${bluef}████████████${reset}  ${purplef}████████████${reset}  ${cyanf}████████████${reset}
 ${yellowf}▀█████████▄▄${reset}  ${redf}██▀██▀▀██▀██${reset}  ${greenf}██▀██▀▀██▀██${reset}  ${bluef}██▀██▀▀██▀██${reset}  ${purplef}██▀██▀▀██▀██${reset}  ${cyanf}██▀██▀▀██▀██${reset}
 ${yellowf}  ▀███████▀${reset}   ${redf}▀   ▀  ▀   ▀${reset}  ${greenf}▀   ▀  ▀   ▀${reset}  ${bluef}▀   ▀  ▀   ▀${reset}  ${purplef}▀   ▀  ▀   ▀${reset}  ${cyanf}▀   ▀  ▀   ▀${reset}

 ${boldon}${yellowf}  ▄███████▄   ${redf}  ▄██████▄    ${greenf}  ▄██████▄    ${bluef}  ▄██████▄    ${purplef}  ▄██████▄    ${cyanf}  ▄██████▄${reset}
 ${boldon}${yellowf}▄█████████▀▀  ${redf}▄${whitef}█▀█${redf}██${whitef}█▀█${redf}██▄  ${greenf}▄${whitef}█▀█${greenf}██${whitef}█▀█${greenf}██▄  ${bluef}▄${whitef}█▀█${bluef}██${whitef}█▀█${bluef}██▄  ${purplef}▄${whitef}█▀█${purplef}██${whitef}█▀█${purplef}██▄  ${cyanf}▄${whitef}█▀█${cyanf}██${whitef}█▀█${cyanf}██▄${reset}
 ${boldon}${yellowf}███████▀      ${redf}█${whitef}▄▄█${redf}██${whitef}▄▄█${redf}███  ${greenf}█${whitef}▄▄█${greenf}██${whitef}▄▄█${greenf}███  ${bluef}█${whitef}▄▄█${bluef}██${whitef}▄▄█${bluef}███  ${purplef}█${whitef}▄▄█${purplef}██${whitef}▄▄█${purplef}███  ${cyanf}█${whitef}▄▄█${cyanf}██${whitef}▄▄█${cyanf}███${reset}
 ${boldon}${yellowf}███████▄      ${redf}████████████  ${greenf}████████████  ${bluef}████████████  ${purplef}████████████  ${cyanf}████████████${reset}
 ${boldon}${yellowf}▀█████████▄▄  ${redf}██▀██▀▀██▀██  ${greenf}██▀██▀▀██▀██  ${bluef}██▀██▀▀██▀██  ${purplef}██▀██▀▀██▀██  ${cyanf}██▀██▀▀██▀██${reset}
 ${boldon}${yellowf}  ▀███████▀   ${redf}▀   ▀  ▀   ▀  ${greenf}▀   ▀  ▀   ▀  ${bluef}▀   ▀  ▀   ▀  ${purplef}▀   ▀  ▀   ▀  ${cyanf}▀   ▀  ▀   ▀${reset}

EOF
