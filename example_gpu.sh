#!/usr/local_rwth/bin/zsh
 
### Job name

#SBATCH --mail-user=yourmail@rwth-aachen.de
#SBATCH --mail-type=ALL

#SBATCH -J gpu_serial
#SBATCH -o gpu_serial.%J.log
#SBATCH --gres=gpu:1
#SBATCH --ntasks-per-node=3
#SBATCH --mem-per-cpu=10G
#SBATCH --time=0-02:20:00
# Load the same python as used for installation

module load cuda/11.2
module load cudnn/8.1.1 
module load python/3.9.6

# start skript
python3 --version
python3 /home/fs608798/.../example.py

