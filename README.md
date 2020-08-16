# Drivers
It includes the following drivers:
rtl8192ce, rtl8192cu, rtl8192se, rtl8192de, rtl8188ee, rtl8192ee, rtl8723ae, rtl8723be, rtl8821ae,
and rtl8723de. The rtl8723de is available ONLY in the extended branch, which is the recommended one.

You can find <<YOUR WIRELESS DRIVER CODE>> using :-
lspci | grep Wireless


You will need to install "make", "gcc", "kernel headers", "kernel build essentials", and "git" :-
sudo apt-get install linux-headers-generic build-essential git

git clone https://github.com/Piyush-Awchar/RTL8723de_Linux.git
cd RTL8723de_Linux
unzip -q RTL8723de.zip
cd RTL8723de
make
sudo make install

#After Install

sudo su -
echo "options rtl8723be ant_sel=2" > /etc/modprobe.d/50-rtl8723be.conf
exit

sudo modprobe -r <<YOUR WIRELESS DRIVER CODE>>
sudo modprobe <<YOUR WIRELESS DRIVER CODE>>
