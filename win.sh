wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
./ngrok authtoken 23o7Blb79YJhsxhQM0s3JvPcCbb_4npfySab6kus3MpsjhYmE
nohup ./ngrok tcp 5900 &>/dev/null &

sudo apt update -y > /dev/null 2>&1

sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1

curl -L -o disk.qcow2 https://download2276.mediafire.com/ippmzaz1rzng/6kpppf7b7pnp77l/disk.qcow2







sudo qemu-system-x86_64 -vnc :0 -hda disk.qcow2  -smp 2 -m 8192M -machine usb=on -device usb-tablet > /dev/null 2>&1
