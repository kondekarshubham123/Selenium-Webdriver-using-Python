#!/bin/bash
# download and install latest geckodriver for only for linux
# required for selenium to drive a firefox browser.
# All made with love Credit- Shubham Kondekar
echo Welcome to geckodriver for fireFox online installation 


install_dir="/usr/local/bin"
if [[ $(uname) == "Linux" ]]; then
    wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz
    tar -xvzf geckodriver*
    chmod +x geckodriver
    mv geckodriver "$install_dir"
    echo geckodriver installation And Path Set SucessFull
else
    echo "Code is not for Specifies OS"
    exit 1
fi