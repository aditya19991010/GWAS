#!/bin/bash

#SBATCH --job-name="hello world from openmpi 4.1.4"
#SBATCH --output="hello_world414.%j.%N.out"
#SBATCH --error="hello_world414.%j.%N.err"
#SBATCH --partition=debug
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=40
# Get into directories
cd /path/to/1KP_address_file
cd = 

# Loop through the text file
for i in 1kp_all_file_name.txt ; do
  # Run the MEME program with the input file and output directory names
  blastx -query $i -db /media/lgi/Disk1/professional/Software/ -out "$i/fa"xml -evalue 1e-10 -outfmt 5 -num_threads 40 
done
