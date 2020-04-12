#!/bin/bash

sudo apt-get install unzip

#Android

mkdir /root/Downloads/android
mkdir /root/Downloads/android/frameworks
mkdir /root/Downloads/android/decompilers
mkdir /root/Downloads/android/misc

#Android Studio

wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/3.6.1.0/android-studio-ide-192.6241897-linux.tar.gz
tar -xvf android-studio-ide-192.6241897-linux.tar.gz
cd /android-studio/bin
chmod +x studio.sh
./studio.sh

#adhrit

cd /root/Downloads/android/frameworks
git clone https://github.com/abhi-r3v0/Adhrit.git
cd Adhrit
sudo apt-get -f install python-pip
sudo apt-get -f install python3-setuptools
sudo apt-get -f install python3-pip
sudo apt-get -f install android-tools-adb
sudo apt-get -f install toilet
chmod +x installer.py
sudo pip3 install smalisca
sudo pip3 install cement==2.10.12
sudo pip3 install r2pipe
python3 installer.py install

#androbugs

cd /root/Downloads/android/frameworks
git clone https://github.com/AndroBugs/AndroBugs_Framework.git

#truegaze

sudo pip3 install truegaze

#StaCoAn

mkdir stacoan
cd stacoan
wget https://github.com/vincentcox/StaCoAn/releases/download/v0.90/linux.zip
unzip linux.zip
rm linux.zip

#Decompilers

#Apktool

sudo apt-get install apktool
#wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar

#dex2jar

sudo apt-get install dex2jar
#wget https://liquidtelecom.dl.sourceforge.net/project/dex2jar/dex2jar-2.0.zip
#sudo apt-get install unzip
#unzip dex2jar-2.0.zip
#rm dex2jar-2.0.zip

#Androreversing

sudo pip3 install frida-tools
sudo pip3 install frida
sudo pip install frida-tools
sudo pip install frida
cd /root/Downloads/android/decompilers
git clone https://github.com/nikita2424/AndRoversing.git

#smali emulator

sudo pip3 docopt 
git clone https://github.com/mikusjelly/smaliemu.git

#jd-gui

mkdir jd-gui
cd jd-gui
wget https://github.com/java-decompiler/jd-gui/releases/download/v1.6.6/jd-gui-1.6.6.deb
dpkg -i jd-gui-1.6.6.deb
rm jd-gui-1.6.6.deb

#procyon

cd /root/Downloads/android/decompilers
wget https://bitbucket.org/mstrobel/procyon/downloads/procyon-decompiler-0.5.36.jar

#cfr

wget https://www.benf.org/other/cfr/cfr-0.149.jar


#Misc

cd /root/Downloads/android/misc

#Diggy

git clone https://github.com/s0md3v/Diggy.git
cd Diggy
chmod +x install.sh
./install.sh

#apk-mitm

npm install -g apk-mitm

# jar-tools

mkdir jar-tools
cd jar-tools

#axmlprinter2

mkdir axmlprinter2
cd axmlprinter2
wget https://github.com/bihe0832/Android-GetAPKInfo/raw/master/AXMLPrinter2_zixie.jar
wget https://github.com/bihe0832/Android-GetAPKInfo/raw/master/AndroidGetSignature.apk
wget https://github.com/bihe0832/Android-GetAPKInfo/raw/master/CheckAndroidV2Signature.jar
wget https://github.com/bihe0832/Android-GetAPKInfo/raw/master/CheckAndroidV2SignatureByAPKSig.jar
wget https://github.com/bihe0832/Android-GetAPKInfo/raw/master/GetApkInfo.jar

#Android Zip Arbitrage

cd jar-tools
wget https://github.com/Fuzion24/AndroidZipArbitrage/raw/master/bin/AndroidZipArbitrage.jar

#other jar tools, most of them are on windows including apktool, drozer, mobsf, genymotion and enjarify are on host windows, please use host for dynamic analysis.

#scourging and ghidra are new mobile app testing frameworks that need to be tried

