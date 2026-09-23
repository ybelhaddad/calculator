#!/usr/bin/env bash
# simple-interest.sh — compute simple interest from user input
# Formula: SI = (P × R × T) / 100

set -euo pipefail

echo "Simple Interest Calculator"
echo "Formula: SI = (P × R × T) / 100"
echo

read -r -p "Enter principal (P): " principal
read -r -p "Enter annual rate of interest in % (R): " rate
read -r -p "Enter time period in years (T): " time

if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] \
  || ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] \
  || ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Error: principal, rate, and time must be non-negative numbers." >&2
  exit 1
fi

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')
total=$(awk -v p="$principal" -v i="$interest" 'BEGIN { printf "%.2f", p + i }')

echo
echo "Principal (P):          $principal"
echo "Rate of interest (R):   $rate%"
echo "Time period (T):        $time year(s)"
echo "Simple interest (SI):   $interest"
echo "Total amount:           $total"
