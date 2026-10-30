#!/bin/bash
# This script calculates simple interest given principal, annual rate of interest and time period in years.
# Do not use this in production. Sample purpose only.

# Author: Upkar Lidder (IBM)
# Additional Authors:
# jagrutisarode08-bit

# Input:
# principal, principal amount
# years, time period in years
# rate, annual rate of interest

# Output:
# simple interest = principal*years*rate/100

read -r -p "Enter the principal: " principal
read -r -p "Enter rate of interest per year: " rate
read -r -p "Enter time period in years: " years

interest=$(awk -v principal="$principal" -v years="$years" -v rate="$rate" 'BEGIN { printf "%.2f", principal * years * rate / 100 }')
printf "The simple interest is: %s\n" "$interest"
