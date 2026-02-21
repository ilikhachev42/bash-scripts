#!/bin/bash

#A simple bash script generator that creates executable bash scripts with a shebang line.

file_name=$1

if [[ -z "$file_name" ]]; then
    read -r -p $'Enter a filename\n' file_name
fi

if [ -s ./"$file_name" ]; then
    echo "$file_name already exists"
    exit 1
fi

touch "$file_name"

echo '#!/bin/bash' > "$file_name"

chmod u+x "$file_name"

echo "$file_name was successfully created"
