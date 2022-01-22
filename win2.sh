


nohup./ngrok tcp 5900 &>/dev/null &
sudo apt update -y > /dev/null 2>&1
echo "Installing QEMU (2-3m)..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo "Windows 10 x64 Lite On Google Colab"
echo Your VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "PODE CHEGAR ATÉ 12H,MAS PODE AVER DESCONEXÕES"

sudo qemu-system-x86_64 -vnc :0 -hda disk.qcow2  -smp cores=8 -m 8192M -machine usb=on -device usb-tablet > /dev/null 2>&1
