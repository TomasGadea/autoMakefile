#!/bin/bash
#
#
# This bash program automates the creation of a very basic Makefile 
# to compile C++ programs. Two main options are available:
#     1. Add a c++ program into the Makefile for gcc compilation.
#        (O2 optimization, c++17 version, Wall flag)
#     2. Add a "make clean" option in the Makefile
#        to remove the .exe files
#
# USAGE: 
# Load the bash function in the current terminal session as follows:
#     $> source makeit.sh
# If you wish to add a program (e.g. "prog.cc") in the Makefile use
# -a or -add flag as follows:
#     $> makeit -a prog
#
# If you wish to add the clean option in the Makefile use -c flag:
#     $> makeit -c





makeit() {

	echo "Starting program at $(date)"
	echo "Running program $0 with $# arguments with pid $$"


	while [ $# -gt 0 ]; do
		case "$1" in 
			-a|-add)
				shift 
				echo -e "$1: $1.cc\n\tg++ -Wall -std=c++17 -O2 $1.cc -o $1.exe\n\t./$1.exe\n\tmake clean\n\n$(cat Makefile)" > Makefile
				shift
				;;
			-c|-clean)
				echo -e "clean:\n\t rm -f a.out *.exe\n" >> Makefile
				shift
				;;
		esac 
	done	
}
