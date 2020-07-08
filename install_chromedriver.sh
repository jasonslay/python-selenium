#! /bin/bash

BASE_VERSION=$(echo $(google-chrome --version) | cut -f 3 -d " " | sed -E "s/\.[0-9]+$//")
LATEST=$(wget -qO- http://chromedriver.storage.googleapis.com/LATEST_RELEASE_$BASE_VERSION)
wget "http://chromedriver.storage.googleapis.com/$LATEST/chromedriver_linux64.zip" -O /tmp/chromedriver.zip
unzip /tmp/chromedriver.zip -d /tmp
rm /tmp/chromedriver.zip
mv /tmp/chromedriver /usr/local/bin
