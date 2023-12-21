#!/bin/bash



function program_berhenti {
    echo "result: result.txt"
}
trap program_berhenti SIGINT SIGTERM


echo "wait a moment...";
sleep 3
clear
echo -e "\033[31m██ ███    ██ ███████ ████████  █████        ██████  ██   ██ ██ ███████ ██   ██\033[0m"
echo -e "\033[31m██ ████   ██ ██         ██    ██   ██       ██   ██ ██   ██ ██ ██      ██   ██\033[0m"
echo -e "\033[31m██ ██ ██  ██ ███████    ██    ███████ █████ ██████  ███████ ██ ███████ ███████\033[0m"
echo -e "\033[97m██ ██  ██ ██      ██    ██    ██   ██       ██      ██   ██ ██      ██ ██   ██\033[0m"
echo -e "\033[97m██ ██   ████ ███████    ██    ██   ██       ██      ██   ██ ██ ███████ ██   ██\033[0m"
echo "==============================================================================="
echo "example: port: 8080";
echo -n "port: ";
read port;
echo "================================================================================"
php -S localhost:$port
program_berhenti


