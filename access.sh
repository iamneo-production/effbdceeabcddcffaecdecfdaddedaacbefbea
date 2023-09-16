#!/bin/bash

# Define the folder and file names
folder_name="restricted_folder"
file_name="restricted_file.txt"

# Create the folder in the home directory
mkdir -p ~/"$folder_name"

# Create the file inside the folder
touch ~/"$folder_name"/"$file_name"

# Set permissions for the folder and file
chmod 644 ~/"$folder_name"  # Read and write for user, read-only for group and others
chmod 711 ~/"$folder_name"/"$file_name"  # Read, write, and execute for user, no access for group and others

# Check if permissions were set correctly
if [ "$(stat -c %a ~/"$folder_name")" = "644" ] && [ "$(stat -c %a ~/"$folder_name"/"$file_name")" = "711" ]; then
  echo "Permissions set successfully."
else
  echo "Failed to set permissions."
fi
