
file_name="my_text_file.txt"
echo "This is some text content." > "$file_name"
if [ -f "$file_name" ]; then
  echo "File created and text written successfully."
else
  echo "Failed to create the file or write text."
fi