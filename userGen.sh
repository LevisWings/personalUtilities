#!/bin/bash

#Colours
green="\e[0;32m\033[1m"
end="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"
purple="\e[0;35m\033[1m"
cyan="\e[0;36m\033[1m"
gray="\e[0;37m\033[1m"

function help(){
  echo -e "${yellow}[i]${end} ${cyan}Usages:${end}\n"
  echo -e "\t${yellow}[*]${end} $0 <FIRST NAME> <LAST NAME>"
  echo -e "\t${yellow}[*]${end} $0 <WORDLIST with first names and last names>"
  exit 1
}

if [[ "$#" != 2 ]] && [[ "$#" != 1 ]]; then
  help
fi

if [[ $# == 1 ]];then
  if [[ -r $1 ]]; then
    cat $1 | while read line; do
      firstname=$(echo $line | awk '{print $1}' | tr '[:upper:]' '[:lower:]')
      lastname=$(echo $line | awk '{print $2}' | tr '[:upper:]' '[:lower:]')
      echo "${firstname}" >> usernames.txt
      echo "${lastname}" >> usernames.txt
      # Pattern: First name - Last name
      echo "${firstname}${lastname}" >> usernames.txt
      echo "${firstname}.${lastname}" >> usernames.txt
      echo "${firstname}-${lastname}" >> usernames.txt
      echo "${firstname}_${lastname}" >> usernames.txt
      echo "${firstname:0:1}.${lastname}" >> usernames.txt
      echo "${firstname:0:1}-${lastname}" >> usernames.txt
      echo "${firstname:0:1}_${lastname}" >> usernames.txt
      echo "${firstname:0:1}${lastname}" >> usernames.txt
      echo "${firstname}${lastname:0:1}" >> usernames.txt
      # Pattern: Last name - First name
      echo "${lastname}${firstname}" >> usernames.txt
      echo "${lastname}.${firstname}" >> usernames.txt
      echo "${lastname}-${firstname}" >> usernames.txt
      echo "${lastname}_${firstname}" >> usernames.txt
      echo "${lastname:0:1}.${firstname}" >> usernames.txt
      echo "${lastname:0:1}-${firstname}" >> usernames.txt
      echo "${lastname:0:1}_${firstname}" >> usernames.txt
      echo "${lastname:0:1}${firstname}" >> usernames.txt
      echo "${lastname}${firstname:0:1}" >> usernames.txt
    done
  else
    echo -e "${yellow}[-]${end} ${red}The file $1 does not exist or does not have read permissions.${end}\n"
    help
  fi
fi

if [[ $# == 2 ]];then
  firstname=$(echo $1 | tr '[:upper:]' '[:lower:]')
  lastname=$(echo $2 | tr '[:upper:]' '[:lower:]')
  echo "${firstname}" >> usernames.txt
  echo "${lastname}" >> usernames.txt
  # Pattern: First name - Last name
  echo "${firstname}${lastname}" >> usernames.txt
  echo "${firstname}.${lastname}" >> usernames.txt
  echo "${firstname}-${lastname}" >> usernames.txt
  echo "${firstname}_${lastname}" >> usernames.txt
  echo "${firstname:0:1}.${lastname}" >> usernames.txt
  echo "${firstname:0:1}-${lastname}" >> usernames.txt
  echo "${firstname:0:1}_${lastname}" >> usernames.txt
  echo "${firstname:0:1}${lastname}" >> usernames.txt
  echo "${firstname}${lastname:0:1}" >> usernames.txt
  # Pattern: Last name - First name
  echo "${lastname}${firstname}" >> usernames.txt
  echo "${lastname}.${firstname}" >> usernames.txt
  echo "${lastname}-${firstname}" >> usernames.txt
  echo "${lastname}_${firstname}" >> usernames.txt
  echo "${lastname:0:1}.${firstname}" >> usernames.txt
  echo "${lastname:0:1}-${firstname}" >> usernames.txt
  echo "${lastname:0:1}_${firstname}" >> usernames.txt
  echo "${lastname:0:1}${firstname}" >> usernames.txt
  echo "${lastname}${firstname:0:1}" >> usernames.txt
fi
