#!/bin/bash

set -e

echo "=================================================================="
echo "                          LOG ANALYZER                            "
echo "=================================================================="


read -p "Enter the logfile :" log_file

if [ -z "$log_file" ]; then
	echo "path cannot be empty"
	exit 1
fi

if [ ! -f "$log_file" ]; then
	echo "Please enter a valid path '$log_file' does not exist"
	exit 1
fi


echo "TOP 5 IP Addresses with most requests:"


awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr | head -5 | awk '{printf "%s - %s requests\n", $2 , $1 }'




echo "TOP 5 most requested paths:"

awk -F '"' '{print $2}' "$log_file" | awk '{print $2}' | sort | uniq -c | sort -nr | head -5 | awk '{printf "%s - %s requests\n", $2, $1}'





echo "TOP 5 Most response status codes:"


awk -F '"' '{print $3}' "$log_file" | sort | uniq -c | sort -nr | head -5 | awk '{printf "%s - %s times\n", $2, $1}'





echo "MOST 5 Most user agents:"


awk -F '"' '{print $6}' "$log_file" | sort | uniq -c | sort -nr | head -5 | awk '{printf "%s - %s requests\n", $2 , $1}'



