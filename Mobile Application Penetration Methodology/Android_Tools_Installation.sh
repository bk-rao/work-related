#! /bin/bash/ 


#Android

#adhrit

git clone https://github.com/abhi-r3v0/Adhrit.git
cd adhrit
sudo apt-get -f install python-pip
sudo apt-get -f install python3-setuptools
sudo apt-get -f install python3-pip
sudo apt-get -f install android-tools-adb
sudo apt-get -f install toilet
sudo pip3 install smalisca
sudo pip3 install cement==2.10.12
python3 installer.py install


#androbugs

git clone https://github.com/AndroBugs/AndroBugs_Framework.git


#truegaze

pip3 install truegaze

#Diggy

git clone https://github.com/s0md3v/Diggy.git
cd Diggy
sudo ./install.sh

#StaCoAn

git clone https://github.com/vincentcox/StaCoAn.git

#apk-mitm

npm install -g apk-mitm

