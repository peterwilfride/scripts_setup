#!/bin/bash
#
#   This file echoes a bunch of color codes to the 
#   terminal to demonstrate what's available.  Each 
#   line is the color code of one forground color,
#   out of 17 (default + 16 escapes), followed by a 
#   test use of that color on all nine background 
#   colors (default + 8 escapes).
#
 
T=$(echo $USER)

offset=6

# Calcula o número de caracteres na saída
num_caracteres=$((${#T} + offset))

gerar_espacos() {
  local num_caracteres=$1
  local espacos=""
  for ((i=0; i<num_caracteres; i++)); do
    espacos+=" "
  done
  echo -n "$espacos"
}

echo -en "\n";
echo -n "$(gerar_espacos $num_caracteres)";
echo -n "40m";
echo -n "$(gerar_espacos $num_caracteres)";
echo -n "41m";
echo -n "$(gerar_espacos $num_caracteres)";
echo -n "42m";
echo -n "$(gerar_espacos $num_caracteres)";
echo -n "43m";
echo -n "$(gerar_espacos $num_caracteres)";  
echo -n "44m";
echo -n "$(gerar_espacos $num_caracteres)";
echo -n "45m";
echo -n "$(gerar_espacos $num_caracteres)";
echo -n "46m";
echo -n "$(gerar_espacos $num_caracteres)";
echo -en "47m\n";
 
for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
           '  36m' '1;36m' '  37m' '1;37m';
  do FG=${FGs// /}
  echo -en " $FGs \033[$FG  $T  "
  for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
    do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
  done
  echo;
done
echo
