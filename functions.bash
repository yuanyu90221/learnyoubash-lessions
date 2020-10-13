#!/usr/bin/env bash
printSpace() {
 local sn=$1
 for ((i=0;i<sn;i++)); do
  echo -n " "
 done
}
printEvenNumber() {
 current_number=$1
 level_number=$2
 top_number=$3
 # make range into event numbers
 if [[ $(($current_number%2)) != 0 ]]; then
  current_number=$(($current_number - 1))
 fi
 if [[ $(($top_number%2)) != 0 ]]; then
  top_number=$(($top_number - 1))
 else
  top_number=$(($top_number - 2))
 fi
 if [[ $current_number -lt $top_number ]]; then
  printSpace $level_number
  echo $current_number
  printEvenNumber $(($current_number+2)) $(($level_number+1)) $top_number
 else
  printSpace $level_number
  echo $current_number
 fi
}
main() {
 echo $FUNCNAME
 printEvenNumber $1 1 $2
}
main $1 $2
