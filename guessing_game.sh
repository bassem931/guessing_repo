function guess {
while true; do
    read -p "How many files are in the current directory? " number
    num_of_files=$(find . -maxdepth 1 -type f | wc -l)
    if [[ ! $number =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    elif [[ $number -lt $num_of_files ]]; then
        echo "too low"
    elif [[ $number -gt $num_of_files ]]; then
        echo "too high"
    else
        echo "correct"
        break
    fi
done
}
guess


    
