#!/bin/bash

if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    gnome-terminal --tab -- bash -c 'php -S localhost:8080'
    sleep 2
    gnome-terminal --tab -- bash -c 'ngrok http 8080'
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    start cmd /k "php -S localhost:8080"
    timeout 2 > nul
    start cmd /k "ngrok http 8080"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    start cmd /k "php -S localhost:8080"
    timeout 2 > nul
    start cmd /k "ngrok http 8080"   
else
    echo "System not recognized"
fi
