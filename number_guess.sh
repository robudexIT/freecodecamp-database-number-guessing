#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"
RANDOM_NUMBER=$(( RANDOM % 1000 +1))
echo $RANDOM_NUMBER
echo "Enter your username:"
read U_NAME
USERNAME_LENGTH=$(echo "$U_NAME" | wc -c)

if [[ $USERNAME_LENGTH -gt 23 ]]
then
    #USERNAME HAS VALID LENGTH QUERY DATABASE
     echo "Username has valid length"
else 
     #CHECK USERNAME
   USERNAME=$($PSQL "SELECT username FROM username WHERE username='$U_NAME'")

   #IF NOT EXIST
   if [[ -z $USERNAME ]]
   then
      #ADD USERNAME TO DATABASE
      INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO username(username) VALUES('$U_NAME')")
      if [[ $INSERT_USERNAME_RESULT = "INSERT 0 1" ]]
      then
      echo "Welcome, $U_NAME! It looks like this is your first time here."
      USERNAME="$U_NAME"
      fi
   else
    USERNAME_PREVOUS_RECORDS=$($PSQL "SELECT username, MIN(number_of_guess) AS best_game,COUNT(game_id) AS game_played FROM username INNER JOIN game_guess USING(user_id) GROUP BY user_id HAVING username='$USERNAME'")
    echo "$USERNAME_PREVOUS_RECORDS" | while IFS="|" read USERNAME BEST_GAME GAME_PLAYED
    do 
      echo -e "\nWelcome back, $USERNAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
    done
   fi
 echo -e "\nGuess the secret number between 1 and 1000:"
 read USER_GUESS_NUMBER 
 x=1
 while [[ $USER_GUESS_NUMBER -ne $RANDOM_NUMBER ]]
 do
    x=$(( $x + 1 ))
    
    if [[ ! $USER_GUESS_NUMBER =~ ^[0-9]+$ ]]
    then
     echo -e "\nThat is not an integer, guess again:"
     read USER_GUESS_NUMBER
    elif [[ $USER_GUESS_NUMBER -lt $RANDOM_NUMBER ]]
    then
      echo -e "\nIt's higher than that, guess again:"
       read USER_GUESS_NUMBER
    elif [[ $USER_GUESS_NUMBER -gt $RANDOM_NUMBER ]]
    then
     echo -e "\nIt's lower than that, guess again:"
      read USER_GUESS_NUMBER
    fi
 done
  echo -e "\nYou guessed it in $x tries. The secret number was $RANDOM_NUMBER. Nice job!"
  #SAVE RESULT TO THE DATABASE
  USER_ID=$($PSQL "SELECT user_id FROM username WHERE username='$USERNAME'")
  echo $USER
  INSERT_USER_RESULT=$($PSQL "INSERT INTO game_guess(number_of_guess,user_id) VALUES($x,$USER_ID)")

fi




