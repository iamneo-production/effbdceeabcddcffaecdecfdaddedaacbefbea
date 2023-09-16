# Define the file name
file_name="my_text_file.txt"

# Create the file and write some text
echo "This is some text content." > "$file_name"

# Check if the file was created and written to successfully
if [ -f "$file_name" ]; then
  echo "File created and text written successfully."
else
  echo "Failed to create the file or write text."
fi