#!/bin/bash

# rename the input file from the command line arguments
inputFile="$1"

# get the relevant numbering of the filename (eg. r0, r1, r2) from the inputFilePath
# Based on FerranB's stackOverflow answer here:
# https://stackoverflow.com/questions/428109/extract-substring-in-bash
baseFile=$(echo "$inputFile" | cut -d'_' -f 1)

# Construct the regex replacement sections for the various inputs

###################R0 patterns###################

# Gets the name and stores it in a group
nameRegex="^\* \([A-Za-z]*\)"

# Gets the favorite breakfast food and stores it in a group
breakfastSnackRegex="^.*, \([A-Za-z]*\)"

##################R1 patterns#####################

# Matches the pattern "I am <name>." and captures the name in a group
introductionRegex="^I am \([A-Za-z]*\)\."

# Matches the regex "favorite sandwich is <favorite sandwich>"
# and captures the output into a group.
favoriteSandwichRegex="favorite sandwhich is \([A-Za-z]*\)\.$"

################R2 patterns#####################

# Gets the sandwich toppings, storing them to a group
sandwichToppingRegex=" \([A-Za-z]*\.\)"

# Gets the "for here" or "to go" pattern at the end of the string
eatingLocationRegex="\.\s\([ft].*\)"



