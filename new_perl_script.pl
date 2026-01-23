#!/bin/bash

# This script creates a new perl script with a specified name.

read -p "Escriba el nombre de su script: " script_name

# Check if the script name exist
if [[ -f "$script_name" ]]; then
  echo "Es repetido, puñetas!!"
  exit 1
fi

# Create the script file
touch "$script_name"

# Add perl line
echo "#!/usr/bin/perl" >> "$script_name"
echo "# Modules used" >> "$script_name"
echo "use strict;" >> "$script_name"
echo "use warnings;" >> "$script_name"
echo "use diagnostics;" >> "$script_name"


# Make the script executable
chmod +x "$script_name"

echo "Perlscript '$script_name' created successfully!"
vim $script_name
