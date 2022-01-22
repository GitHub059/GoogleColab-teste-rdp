wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
./ngrok authtoken 23o7Blb79YJhsxhQM0s3JvPcCbb_4npfySab6kus3MpsjhYmE
nohup./ngrok tcp 5900 &>/dev/null &
echo Please wait for installing...
sudo apt update -y > /dev/null 2>&1
echo "Installing QEMU (2-3m)..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo Downloading Windows Disk...
curl -L -o disk.qcow2 https://download2276.mediafire.com/ippmzaz1rzng/6kpppf7b7pnp77l/disk.qcow2
echo "Windows 10 x64 Lite On Google Colab"
echo Your VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Note: Use Right-Click Or Ctrl+C To Copy"
echo "Please Keep Colab Tab Open, Maximum Time 12h"
echo "SUbscribe the Hacktechtv Channel"
echo "LinK: https://www.youtube.com/channel/UCrjitPSyDiWV6NJIN74pHdQ"
sudo qemu-system-x86_64 -vnc :0 -hda disk.qcow2  -smp cores=8 -m 8192M -machine usb=on -device usb-tablet > /dev/null 2>&1
