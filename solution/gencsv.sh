#!/bin/bash

# Check if exactly two arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start_index> <end_index>"
    exit 1
fi

# Get the start and end index from the arguments
start_index=$1
end_index=$2

# Define the output file
output_file="inputFile"

# Create or overwrite the file
> "$output_file"

# Loop to generate the CSV entries
for (( i=start_index; i<=end_index; i++ ))
do
    # Generate a random number between 1 and 100
    random_number=$((RANDOM % 100 + 1))

    # Write the index and random number to the file
    echo "$i, $random_number" >> "$output_file"
done

# Print a message indicating that the file has been generated
echo "CSV file '$output_file' has been generated with entries from index $start_index to $end_index."

