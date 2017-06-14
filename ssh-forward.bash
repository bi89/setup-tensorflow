#!/bin/bash
if [ "$#" -eq  "1" ]
then
	echo Start ssh forward with user $1
	ssh -L 6606:127.0.0.1:6606 -N -f $1@osaka.siitai.xyz
	ssh -L 8888:127.0.0.1:8888 -N -f $1@osaka.siitai.xyz
else
	echo "Invalid argument: bash ssh-foward.bash {Osaka username}"
fi
exit
