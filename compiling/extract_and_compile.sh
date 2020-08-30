#!/usr/bin/bash

#extract and uncompress the NthPrime tar file
tar -xzf NthPrime.tgz

#navigate to NthPrime file
cd NthPrime

#compile NthPrime file
gcc main.c nth_prime.c -o NthPrime

./NthPrime $1
