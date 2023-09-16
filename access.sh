

folder_name="restricted_folder"
file_name="restricted_file.txt"

mkdir -p ~/"$folder_name"

touch ~/"$folder_name"/"$file_name"


chmod 644 ~/"$folder_name"  # Read and write for user, read-only for group and others
chmod 711 ~/"$folder_name"/"$file_name"  # Read, write, and execute for user, no access for group and others


if [ "$(stat -c %a ~/"$folder_name")" = "644" ] && [ "$(stat -c %a ~/"$folder_name"/"$file_name")" = "711" ]; then
  echo "Permissions set successfully."
else
  echo "Failed to set permissions."
fi
