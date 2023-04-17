#!/bin/bash

# Définition des tableaux
a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7)
common_values=()

for i in "${a[@]}"; do
  for j in "${b[@]}"; do
    if [ "$i" == "$j" ]; then
      for k in "${c[@]}"; do
        if [ "$i" == "$k" ]; then
          common_values+=("$i")
        fi
      done
    fi
  done
done

echo $common_values