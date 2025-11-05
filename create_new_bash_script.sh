#!/bin/bash

# This script creates a new bash script 

read -p "Type the name of your new script: " script_name

# Check if the script name exist
if [[ -f "$script_name" ]]; then
  echo "Try different name please!"
  exit 1
fi

# Create the script file
touch "$script_name"

# Adding lines for bash script
echo "#!/bin/bash" >> "$script_name"
echo "set -euo pipefail" >> "$script_name"
echo "IFS=$'\n\t'" >> "$script_name"

# Make the script executable
chmod +x "$script_name"

echo "Script '$script_name' created successfully!"
vim $script_name
echo "Ready to ROCK!!!"
