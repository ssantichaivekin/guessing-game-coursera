#!/usr/bin/env bash

ans=$( ls | wc -l )
guess=0
while (( guess != ans ))
do
  read guess
  if (( guess > ans )) 
  then
    echo "The answer is too high"
  elif (( guess < ans ))
  then
    echo "The answer is too low"
  else # the guess is correct
    echo "The answer is correct"
  fi
done
echo "Congrats!"
