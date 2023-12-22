#!/bin/bash
# xterm -e 'php -S localhost:8080' & sleep 2; xterm -e 'ngrok http 80'
gnome-terminal --tab -- bash -c 'php -S localhost:8080'
sleep 2
gnome-terminal --tab -- bash -c 'ngrok http 8080'