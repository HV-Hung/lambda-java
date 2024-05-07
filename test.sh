# Define the base directory
working_dirs=functions

# Initialize empty strings for functionMapping and functionList
functionMapping=""
functionList="["

# Loop over all directories under the base directory
for directory in $(find $working_dirs -mindepth 1 -maxdepth 1 -type d); do
  # Remove the base directory prefix from the directory name
  directory=${directory#$working_dirs/}
  
  # Append to the functionMapping string in the format "directory":"base_directory/directory/**"
  functionMapping+="\"$directory\":\"$working_dirs/$directory/**\","
  
  # Append to the functionList string
  functionList+="\"$directory\","
done

# Remove the trailing comma from the functionMapping string and wrap it in braces
functionMapping="{${functionMapping%,}}"

# Remove the trailing comma from the functionList string and close the bracket
functionList="${functionList%,}]"

# Print the functionMapping string and functionList
echo $functionMapping
echo $functionList