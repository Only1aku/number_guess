#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Prompt for username
echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ -z $USER_ID ]]
then
  # New user
  $PSQL "INSERT INTO users(username) VALUES('$USERNAME')" > /dev/null
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # Returning user
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID")
  if [[ -z $BEST_GAME ]]
  then
    BEST_GAME="0"
  fi
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate secret number
SECRET=$(( RANDOM % 1000 + 1 ))
echo "Guess the secret number between 1 and 1000:"

GUESSES=0

# Game loop
while true
do
  read GUESS
  (( GUESSES++ ))
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  elif [[ $GUESS -eq $SECRET ]]
  then
    echo "You guessed it in $GUESSES tries. The secret number was $SECRET. Nice job!"
    $PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $GUESSES)" > /dev/null
    exit
  elif [[ $GUESS -gt $SECRET ]]
  then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
done
