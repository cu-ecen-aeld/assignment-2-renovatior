#! /bin/sh
if [ -z $1 ] || [ -z $2 ]
then
    echo "Please provide directory and search text string!"
    exit 1
else
    filesdir=$1
    searchstr=$2
fi

if ! [ -d "$filesdir" ]
then
    echo "Input is not a directory!"
    exit 1
fi

x=$(find "$filesdir" -type f | wc -l)
y=$(grep -r "$searchstr" "$filesdir" | wc -l)
echo "The number of files are $x and the number of matching lines are $y"
