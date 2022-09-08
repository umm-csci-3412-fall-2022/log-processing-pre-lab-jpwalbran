#!/bin/bash

# rename the input file from the command line arguments
inputFile="$1"

# get the relevant numbering of the filename (eg. r0, r1, r2) from the inputFilePath
# Based on FerranB's stackOverflow answer here:
# https://stackoverflow.com/questions/428109/extract-substring-in-bash
baseFile=$(echo "$inputFile" | cut -d'_' -f 1)

echo "$baseFile"
