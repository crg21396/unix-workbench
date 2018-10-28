filecount=$(pwd|ls|wc -l)

function checker
{
    if [[ $1 -lt $2 ]]
    then
        echo "Low! Try Again!"
    elif [[ $1 -gt $2 ]]
    then
        echo "High! Try Again!"
    else
        echo ""
        echo "Guessed Right! Now terminating program!"
    fi
}


while [[ $filecount -ne $guess ]]
do
    echo "How many files are there in the current directory? Take a guess!"
    read guess
    echo $(checker $guess $filecount)
    echo ""
done
