#!/usr/local_rwth/bin/zsh

#SBATCH --ntasks-per-node=6
#SBATCH --mem-per-cpu=10G
#SBATCH --time=0-5:20:00
#SBATCH --job-name=jupyter-notebook
#SBATCH --output=jupyter-notebook-%J.log

# Load the same python as used for installation

module load cuda/11.2
module load cudnn/8.1.1 
module load python/3.9.6

# get tunneling info
XDG_RUNTIME_DIR=""
port=$(shuf -i8000-9999 -n1)
node=$(hostname -s)
PYTHON_USER_BASE=$(python3.9 -m site --user-base)

# start Juputer Notebook. Remember: it will be active during the job run time only!
$PYTHON_USER_BASE/bin/jupyter-notebook --no-browser --port=${port} --ip=${node}
