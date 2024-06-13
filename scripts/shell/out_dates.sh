#!/bin/bash
set -e
op_apm () {
    mmm=$(date +"%H")
    if [ $mmm -gt 12 ]; then
        for ((i = $mmm; i < 24; i++)); do
            echo $i
        done
    else
        for ((i = $mmm; i <=12; i++)); do
            nni=$(printf "%0*d" 2 $i)
            echo $nni
        done
        echo 'pm'
    fi
}
op_day () {
    ddd=$(date +"%Y%m%d")
    add=`op_apm`
    for as in $add;do
        echo "${ddd}${as}"
    done
    date=$(date +%d)
    start=$((date + 1))
    npre=$(date +"%Y%m")
    for ((i = $start; i <= 31; i++)); do
        nni=$(printf "%0*d" 2 $i)
        echo "${npre}${nni}"
    done
    amon=$(date +%m)
    start=$((amon + 1))
    npre=$(date +"%Y")
    for ((i = $start; i <= 12; i++)); do
        nni=$(printf "%0*d" 2 $i)
        echo "${npre}${nni}"
    done
    ayear=$(date +%Y)
    start=$((ayear + 1))
    end=$((start + 4))
    for ((i = $start; i <= $end; i++)); do
        echo $i
    done
}
add=`op_day`
for as in $add;do
    echo $as
done

