#!/bin/bash
# Q1: Write a command which can list all php-fpm processes
ps aux | grep fpm
or
pstree | grep fpm


# Q2: Write a command which provides summary information about I/O activity and load on block devices in the system
iotop -o

# Q3: List only the empty lines in file shakespeare.txt
awk '{if (NF == 0) print $0}' shakespeare.txt
