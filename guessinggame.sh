#!/usr/bin/env bash

function ask_for_guess {
  read guess
  if (( guess > ans ))
  then
    echo "The answer is too high."
  elif (( guess < ans ))
  then
    echo "The answer is too low."
  else # the guess is correct
    echo "The answer is correct."
  fi
}

ans=$( ls | wc -l )
guess=0
echo "How many files are in the current directory?"
while (( guess != ans ))
do
  echo -n "Guess: "
  ask_for_guess
  # note that the value of guess will be
  # modified in the function since this is
  # a bash script
done
echo "Congrats!"
