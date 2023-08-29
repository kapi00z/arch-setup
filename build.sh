#!/bin/bash

array=( $( ls . ) )
base=("docker.sh" "python.sh" "yay.sh" "build.sh")

for i in ${base[@]}
do
    if [[ ! " ${array[@]} " =~ " $i " ]]
    then
        echo "$i is not in directory!"
        exit 1
    fi
done

for i in ${base[@]}
do
    if [[ " ${array[@]} " =~ " $i " ]]
    then
        array=("${array[@]/$i}")
    fi
done

#echo "${array[@]}"

bash yay.sh
bash docker.sh
bash python.sh

for i in ${array[@]}
do
    bash $i
    echo $i
done