#!/bin/bash

#install needed software from apt

sudo apt-get update
#sudo apt-get dist-upgrade
# sudo apt-get -y install chromium-browser 
sudo apt-get -y install matchbox 
# sudo apt-get install x11-xserver-utils ttf-mscorefonts-installer xwit sqlite3 libnss3
sudo apt-get -y install midori
# sudo apt-get -y install xboxdrv

# http://www.linuxquestions.org/questions/linux-software-2/using-gamepad-as-keyboard-input-706963/
# joypad app
sudo apt-get -y install qjoypad


#echo -e "\n Switch your x11 settings to anybody \n" 
#sudo dpkg-reconfigure x11-common

# http://unix.stackexchange.com/questions/153870/how-can-i-configure-anybody-to-run-x-in-a-one-liner
sudo sed -i \
    's/allowed_users=console/allowed_users=anybody/' /etc/X11/Xwrapper.config
    

#create folders for install

sudo mkdir /home/pi/RetroPie/roms/scratch

#copy appropriate script files

cd /home/pi/RetroPie/roms/scratch
#sudo wget https://github.com/punkbass/ScratchRetroPie/raw/master/Pony-Math.sh
#sudo wget https://github.com/punkbass/ScratchRetroPie/raw/master/Scratch-Napped.sh
sudo wget https://github.com/punkbass/ScratchRetroPie/raw/master/Epic-Ninja.sh
sudo wget https://github.com/punkbass/ScratchRetroPie/raw/master/FOIL-Mario.sh
sudo wget https://github.com/punkbass/ScratchRetroPie/raw/master/Geometry-Jump.sh
#Install Scratch to Emulation Station as its own device menu

sudo sed -i -e 's|</systemList>|<system>\n<name>scratch</name>\n<fullname>Scratch</fullname>\n<path>~/RetroPie/roms/scratch</path>\n<extension>.sh .SH</extension>\n<command>xinit /home/pi/RetroPie/roms/scratch/scratch.sh</command>\n<platform>scratch</platform>\n<theme>scratch</theme>\n</system>\n</systemList>|g' /etc/emulationstation/es_systems.cfg
sudo mkdir /etc/emulationstation/themes/simple/scratch
sudo mkdir /etc/emulationstation/themes/simple/scratch/art/

cd /etc/emulationstation/themes/simple/scratch/
sudo wget https://github.com/punkbass/ScratchRetroPie/raw/master/minecraftmenu/theme.xml

cd /etc/emulationstation/themes/simple/scratch/art/
sudo wget https://github.com/punkbass/ScratchRetroPie/raw/master/minecraftmenu/art/scratch.png
sudo wget https://github.com/punkbass/ScratchRetroPie/raw/master/minecraftmenu/art/scratch_art.png
sudo wget https://github.com/punkbass/ScratchRetroPie/raw/master/minecraftmenu/art/scratch_art_blur.png

cd /home/pi/RetroPie/roms/scratch

#Chmod scripts to be runnable

#sudo chmod +x Pony-Math.sh
#sudo chmod +x Rabbit-Eats-Math-for-Breakfast-Pi.sh
sudo chmod +x Epic-Ninja.sh
sudo chmod +x FOIL-Mario.sh
sudo chmod +x Geometry-Jump.sh

# https://ubuntuforums.org/showthread.php?t=903858
#sudo apt-get install python-xlib python-pygame svn
#mkdir ~/jkeys
#cd ~/jkeys
#svn checkout http://jkeys.googlecode.com/svn/trunk/ jkeys-read-only

sudo mkdr /home/pi/.qjoypad3

cd /home/pi/.qjoypad3
sudo wget https://github.com/punkbass/ScratchRetroPie/raw/master/Epic-Ninja.lyt
sudo wget https://github.com/punkbass/ScratchRetroPie/raw/master/FOIL-Mario.lyt

echo -e "\nEverything done! \n"
