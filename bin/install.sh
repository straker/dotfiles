#!/bin/bash

# Change permission and move bin files
chmod +rwx ./batcharge.py
chmod +rwx ./ssh-key

cp ./batcharge.py ~/bin/
cp ./ssh-key ~/bin/