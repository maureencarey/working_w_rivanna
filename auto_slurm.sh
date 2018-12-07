#!/bin/bash

letters=("A" "B")

numbers=("1" "2")

for i in ${letters[@]}; do
    for j in "${numbers[@]}" ; do
        #construct name for sbatch file being generated
        foo=${i}_${j}".sbatch"
        echo $foo
        cp slurm_template.slurm $foo
        echo "python3 task1.py '$i' '$j'" >> $foo
        echo "python3 task2.py '$i' '$j'" >> $foo
#        sbatch $foo
    done
done
