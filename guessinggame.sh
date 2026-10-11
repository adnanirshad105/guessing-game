
#!/bin/bash

# Function to count files in the current directory
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Store the correct number of files
correct_number=$(count_files)

# Welcome the user
echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Continue until the guess is correct
while true
do
    read -r -p "Enter your guess: " guess

    # Check whether the input is a valid integer
    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid positive number."
    elif [[ "$guess" -lt "$correct_number" ]]
    then
        echo "Your guess is too low. Try again!"
    elif [[ "$guess" -gt "$correct_number" ]]
    then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed correctly!"
        break
    fi
done

# End of the guessing game
