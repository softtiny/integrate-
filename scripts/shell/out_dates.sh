#!/bin/bash
set -e
dateutc () {
    date -u $*
}
op_apm () {
    mmm=$(dateutc "+%H")
    mmm=${mmm#0}
    if [ $mmm -gt 12 ]; then
        for ((i = $mmm; i < 24; i++)); do
            echo $i
        done
    else
        for ((i = $mmm; i < 24; i++)); do
            nni=$(printf "%0*d" 2 $i)
            echo $nni
        done
        echo 'pm'
    fi
}
op_day () {
    ddd=$(dateutc "+%Y-%m-%d")
    add=`op_apm`
    echo $ddd
    for as in $add;do
        echo "${ddd}-${as}"
    done
    dateutc=$(dateutc +%d)
    start=$((dateutc + 1))
    npre=$(dateutc +"%Y-%m")
    for ((i = $start; i <= 31; i++)); do
        nni=$(printf "%0*d" 2 $i)
        echo "${npre}-${nni}"
    done
    amon=$(dateutc +%m)
    start=$((amon + 1))
    npre=$(dateutc +"%Y")
    for ((i = $start; i <= 12; i++)); do
        nni=$(printf "%0*d" 2 $i)
        echo "${npre}-${nni}"
    done
    ayear=$(dateutc +%Y)
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
