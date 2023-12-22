if command -v ngrok >/dev/null 2>&1; then
    echo "ngrok is already installed with version: $(ngrok --version)"
else
    echo "ngrok is not installed yet"
    if [ "$(uname)" == "Darwin" ]; then
        echo "Sistem operasimu macOS"
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
        sudo tar -xvzf ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin
    elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
        echo "Sistem operasimu Windows"
        wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-windows-amd64.zip
        unzip ngrok-v3-stable-windows-amd64.zip
    elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
        echo "Sistem operasimu Windows"
        wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-windows-amd64.zip
        unzip ngrok-v3-stable-windows-amd64.zip
    else
        echo "Your operating system is not recognized"
    fi
fi
sleep 3
clear