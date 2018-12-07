#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mail-type=ALL
#SBATCH --time=2-00:00:00
#SBATCH --partition=parallel
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=6000
#SBATCH --account=my_account

module load anaconda3
source activate sample_env

python3 task1.py 'A' '1'
python3 task2.py 'A' '1'
