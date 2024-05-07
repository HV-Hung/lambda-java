filter=""
work_dirs="["

for dir in $(find functions -mindepth 1 -maxdepth 1 -type d); do
  dir=${dir#functions/}
  
  filter+="\"$dir\":\"functions/$dir/**\","
  work_dirs+="\"$dir\","
done

filter="{${filter%,}}"

work_dirs="${work_dirs%,}]"

echo $filter
echo $work_dirs