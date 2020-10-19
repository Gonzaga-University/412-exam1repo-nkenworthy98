#!/bin/sh

POSSIBLE_USER=$1

if [ "$POSSIBLE_USER" == "" ]; then
    echo "You must enter in a username.";
    echo "Example: ./userInfo.sh myuser";
    exit;
fi

if [ -d /home/$POSSIBLE_USER ]; then
    echo "User exists!";
    echo "Here's the size of the home directory (This may take awhile): ";
    du -h /home/"$POSSIBLE_USER" | tail -n 1;
    echo "Here are the first 10 filenames: ";
    ls -la /home/"$POSSIBLE_USER" | grep "^-" | head;
else
    echo "User does not exist.";
fi
