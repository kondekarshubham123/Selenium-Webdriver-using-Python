#!/bin/bash
# download and install latest geckodriver for only for linux
# required for selenium to drive a firefox or Chrome Browser
# All made with love Credit- Shubham Kondekar   
echo Welcome to Selenium Driver installer
echo For which browser you want to use Selenium
echo ------------------------------------------
echo 1 Chrome
echo 2 Firefox
read Val
install_dir="/usr/local/bin"
if [[ $Val == "1" ]]; then
    wget https://chromedriver.storage.googleapis.com/78.0.3904.70/chromedriver_linux64.zip
    unzip chromedriver_linux64.zip
    mv chromedriver "$install_dir"
    echo Chromedriver for Chrome installation And Path Set Sucessfull
elif [[ $Val == "2" ]]; then
    wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz
    tar -xvzf geckodriver*
    chmod +x geckodriver
    mv geckodriver "$install_dir"
    echo geckodriver for fireFox installation And Path Set Sucessfull
else
    echo Invalid Choice
fi