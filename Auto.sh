sudo su
sudo apt-get install linux-headers-generic build-essential git
git clone https://github.com/Piyush-Awchar/RTL8723de_Linux.git
cd RTL8723de_Linux
unzip -q RTL8723de.zip
cd RTL8723de
make
sudo make install
echo "options rtl8723be ant_sel=2" > /etc/modprobe.d/50-rtl8723be.conf
exit
