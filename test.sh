functions=$(find functions -maxdepth 1 -mindepth 1 -type d -print | jq -R . | jq -s . )
echo $functions