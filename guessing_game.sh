function guess {
    echo "Welcome to the guessing game!"
    while true; do
        echo "How many files are in the current directory? "
        read number
        num_of_files=$(find . -maxdepth 1 -type f | wc -l)
        if [[ ! $number =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
            continue
        elif [[ $number -lt $num_of_files ]]; then
            echo "too low"
        elif [[ $number -gt $num_of_files ]]; then
            echo "too high"
        else
            echo "correct number exiting program"
            break
        fi
        echo "wrong guess, try again."
    done
}
guess
