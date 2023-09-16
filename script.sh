folder_name="my_folder"
file_name="my_file.txt"

mkdir -p ~/"$folder_name"
touch ~/"$folder_name"/"$file_name"

if [ -d ~/"$folder_name" ] && [ -f ~/"$folder_name"/"$file_name" ]; then
  echo "Folder and file created successfully."
else
  echo "Failed to create folder and file."
fi