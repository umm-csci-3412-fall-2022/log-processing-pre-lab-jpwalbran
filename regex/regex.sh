#!/bin/bash

# Perform the format replacements and the output based on the input file

sed -n -E "s/\* ([A-Za-z]*), ([A-Za-z]*)/1. \1\n2. \2\n/p" < r0_input.txt > r0_output.txt

sed -n -E "s/\* I am ([A-Za-z]*)\. My favorite sandwich is ([A-Za-z]*)/1. \1\n2. \2\n/p" < r1_input.txt > r1_output.txt

sed -n -E "s/\* .* ([A-Za-z]*\..*)\s([ft].*)/1. \1\n2. \2\n/p" < r2_input.txt > r2_output.txt
