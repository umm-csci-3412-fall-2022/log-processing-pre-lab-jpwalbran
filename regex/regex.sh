#!/bin/bash

# Perform the format replacements and the output based on the input file

sed -E "s/\* ([A-Za-z]*), ([A-Za-z]*)/1. \1\n2. \2\n/" < r0_input.txt > r0_output.txt

sed -E "s/\* I am ([A-Za-z]*)\. My favorite sandwich is ([A-Za-z]*)/1. \1\n2. \2\n/" < r1_input.txt > r1_output.txt

sed -E "s/\* .* ([A-Za-z]*\..*)\s([ft].*)/1. \1\n2. \2\n/" < r2_input.txt > r2_output.txt
