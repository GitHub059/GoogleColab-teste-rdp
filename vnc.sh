echo "está a instalar seu desktop:"
sudo apt update && sudo apt install xfce4 firefox tigervnc-standalone-server xfce4-terminal
echo "instalando o ngrok:"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
./ngrok authtoken 23o7Blb79YJhsxhQM0s3JvPcCbb_4npfySab6kus3MpsjhYmE
echo "iniciando o vnc eo ngrok:"
vncserver :1
nohup ./ngrok tcp 5900 &>/dev/null &
