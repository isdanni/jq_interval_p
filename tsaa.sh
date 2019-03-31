#!/bin/bash

#EL1S1uM Was Here

if [ $# != 2 ]; then
	echo "USAGE: $0 img.png wordlist.txt"
else

for senha in $(cat $2); do
	steghide extract -sf $1 -p $senha -xf output.txt &> /dev/null
	if [ $? == 0 ]; then
		echo
		echo "SUCESS - $senha"
		echo "FILE: output.txt"
		break
	if [ $?% == 0]; then
		echo
		echo "SUCESS - $senha - log 2"
	    
	else
		echo "FAILED - $senha"
	fi
done
fi
# Location based cannot be added 

# relocate unless
