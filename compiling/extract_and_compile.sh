#!/usr/bin/bash

#extract and uncompress the NthPrime tar file
tar -xzf NthPrime.tgz

#navigate to NthPrime file
cd NthPrime

#compiles and puts it into NthPrime file
gcc main.c nth_prime.c -o NthPrime

#Passes in the first command line argument
./NthPrime $1
