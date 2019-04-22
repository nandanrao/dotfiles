wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O /tmp/ngrok.zip
unzip /tmp/ngrok.zip
sudo mv ngrok /opt/
sudo ln -s /opt/ngrok /usr/local/bin/ngrok
