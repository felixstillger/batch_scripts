These are some commands and scripts for the rwth cluster:

to queue a job:

# sbatch script.sh

to watch status:

# squeue -u $USER

to cancel use integer from status as jobid without quotes:

# scancel "JOBID"


Custom python environments:
use module system:

show all available modules:

# module avail
-python/3.7.11

load it:
# module load python/3.7.11

unload it:
# module unload ...

while using e.g. pip in this module can change the packages

Overall core-hours used:
# r_wlm_usage -q
