file_name=$1

header="$(echo "/*
** EPITECH PROJECT, $(date +"%Y")
** $(basename $2)
** File description:
** $file_name source file
*/
")"

echo $(ls)

echo -e "$header\n$(cat $1)" > $1
