#! /bin/sh
if [ -z $1 ] || [ -z $2 ]
then
    echo "Please provide file full path and text string to be written"
    exit 1
else
    writefile=$1
    writestr=$2
fi

directory=$(dirname "$writefile")
if ! [ -d $directory ]
then
    mkdir "$directory"
    if [ $? -ne 0 ]
    then
        echo "Cant create corresponding directory!"
        exit 1
    fi
fi

touch "$writefile"
echo "$writestr" > "$writefile"