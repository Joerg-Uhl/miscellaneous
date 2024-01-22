#!/bin/bash


convert()
{
    if [ ! -v "$erg" ]
    then
        erg=()
    fi
    if [ ! -v "$i" ]
    then
        i=0
    fi

    erg[i]=$(($1 % $2))
    newval=$(($1 / $2))
    if [ "$newval" -ne 0 ]
    then
        i=$((i + 1))
        convert "$newval" "$2"
    else
        for ((i=0; i < ${#erg[@]}; i++)) ; do
            index=${#erg[@]}-1-i
            result[i]=$((erg[index]))  
        done
        echo "${result[@]}"
    fi
}

convert 6 2
