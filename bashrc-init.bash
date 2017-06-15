#!/bin/bash
user=$(whoami)
touch /home/users/$user/.bashrc

echo -n "Hello $user"
echo ", It will export Miniconda3, CUDA 8.0, CUDA 8.0 Lib64."
echo -n 'export PATH="/home/users/' >> /home/users/$user/.bashrc
echo -n "$user" >> /home/users/$user/.bashrc
echo '/miniconda3/bin:$PATH"' >> /home/users/$user/.bashrc
echo "Add Miniconda3 Done!"
echo 'export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}' >> /home/users/$user/.bashrc
echo "Add CUDA 8.0 Done!"
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64\' >> /home/users/$user/.bashrc
echo '                    ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> /home/users/$user/.bashrc
echo "Add CUDA 8.0 Lib64 Done!"
echo "===="
source /home/users/$user/.bashrc
echo "All Done!"
echo "===="
exit
