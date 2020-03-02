#! /bin/bash/ 

#Install
#disable antivirus on host, it dirupts downloads and causes lots of errors

#System

#fixing w3af installation errors

echo deb http://http.kali.org/kali kali-rolling main non-free contrib >> /etc/apt/sources.list

echo deb-src http://http.kali.org/kali kali-rolling main contrib non-free >> /etc/apt/sources.list

apt update && apt -y full-upgrade

#For more info : https://forums.kali.org/showthread.php?42875-Kali-linux-failed-to-get-libpng12-(libpng12-so-0-No-such-file-or-directory)-on-hold

sudo apt-get install liblzma-dev
sudo apt-get install zlib1g-dev
sudo apt-get install rpm
sudo apt-get install python3-bs4
sudo apt-get install python3-setuptools
sudo apt-get install python3-dev
sudo apt-get install python-dev
sudo apt-get install libssl-dev python-dev python3-dev pkg-config
sudo apt-get install libsqlite3-dev
sudo apt-get install libxml2-dev libxslt1-dev
sudo apt-get install git gcc make libpcap-dev

#PIP

sudo apt-get install python-pip  											#for python2
sudo apt-get install python3-pip 											#for python3
sudo pip install -U pip 													#upgrade pip
sudo pip3 install -U pip3

#GOLANG

sudo apt-get install golang

#tilix

sudo apt-get install tilix

#JAVA 8

sudo apt-get update 
sudo apt-get install openjdk-8-jdk
sudo update-alternatives --config java
2

#NPM

sudo apt-get install python g++ make checkinstall fakeroot
sudo apt-get install npm

#SUBLIME

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text


#firefox install for zeus, download and extract from ftp firefox - version 56

echo -e "\ndeb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main" | sudo tee -a /etc/apt/sources.list > /dev/null

sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 2667CA5C

sudo apt update

sudo dpkg-divert --remove /usr/bin/firefox

sudo rm /usr/bin/firefox

sudo apt install firefox-mozilla-build

#Make Directories

mkdir /root/Downloads/Documents/

mkdir /root/Downloads/Frameworks/

mkdir /root/Downloads/Payloads_and_Lists/
mkdir /root/Downloads/Payloads_and_Lists/jhaddix/

mkdir /root/Downloads/Tools/
mkdir /root/Downloads/Tools/burp/
mkdir /root/Downloads/Tools/jython/

#Certspotter

apt-get install Certspotter

#massdns

apt-get install libldns-dev
cd /root/Downloads/Frameworks/
git clone https://github.com/blechschmidt/massdns.git
cd massdns
make

#altdns

pip install py-altdns

#dns-parallel-prober 

cd /root/Downloads/Frameworks/
git clone https://github.com/lorenzog/dns-parallel-prober.git
pip3 install -r requirements.txt

#asnlookup

cd /root/Downloads/Frameworks/
git clone https://github.com/yassineaboukir/asnlookup
cd asnlookup
pip install -r requirements.txt

#Domlink

cd /root/Downloads/Frameworks/
git clone https://github.com/vysecurity/DomLink.git
cd DomLink
sudo pip install -r requirements.txt

#nsec3walker

cd /root/Downloads/Frameworks/
git clone https://github.com/Seabreg/nsec3walker.git
cd nsec3walker
make

#nsec3map

cd /root/Downloads/Frameworks/
git clone https://github.com/anonion0/nsec3map.git
cd nsec3map
sudo python setup.py install

#unfurl

go get -u github.com/tomnomnom/unfurl

#Httprobe

go get -u github.com/tomnomnom/httprobe

#zenmap
wget https://nmap.org/dist/zenmap-7.80-1.noarch.rpm
sudo apt install alien
alien zenmap-7.80-1.noarch.rpm
dpkg -i zenmap_7.80-2_all.deb

#Eyewitness

sudo apt-get install eyewitness

#gobuster
sudo apt-get install gobuster

#gitrob
go get github.com/michenriksen/gitrob










#light-security

sudo npm install -g lighthouse-security

#safety

sudo pip install safety

#truffleHog

sudo pip3 install truffleHog

#beef

sudo apt-get install beef-xss

#brutespray

sudo apt-get install brutespray

#snallygaster

sudo pip3 install snallygaster
#CORScanner

cd /root/Downloads/Frameworks/
git clone https://github.com/chenjj/CORScanner.git
cd CORScanner
sudo pip3 install -r requirements.txt

#FDSploit

cd /root/Downloads/Frameworks/
git clone https://github.com/chrispetrou/FDsploit.git
cd FDsploit
rm /usr/lib/python2.7/lib-dynload/_hashlib.x86_64-linux-gnu.so 				
#frozenset error and hashlib needs scipy
sudo pip install -r requirements.txt

#shuriken

cd /root/Downloads/Frameworks/
git clone https://github.com/shogunlab/shuriken.git
cd shuriken
sudo pip install -r requirements.txt

#Sn1per

cd /root/Downloads/Frameworks/
git clone https://github.com/1N3/Sn1per.git
cd Sn1per
./install.sh 																#Takes lots of time

#whitewidow

cd /root/Downloads/Frameworks/
git clone https://github.com/WhitewidowScanner/whitewidow.git
cd whitewidow
bundle install

#Raccoon

cd /root/Downloads/Frameworks/
git clone https://github.com/evyatarmeged/Raccoon.git
cd Raccoon
sudo python3 setup.py install

#vulscan

cd /root/Downloads/Frameworks/
git clone https://github.com/scipag/vulscan scipag_vulscan
ln -s `pwd`/scipag_vulscan /usr/share/nmap/scripts/vulscan

#sqliv

git clone https://github.com/the-robot/sqliv.git
cd sqliv
sudo pip install -r requirements.txt

#lynis

cd /root/Downloads/Frameworks/
git clone https://github.com/CISOfy/lynis

#trivy

mkdir trivy
cd trivy
wget https://github.com/aquasecurity/trivy/releases/download/v0.1.6/trivy_0.1.6_Linux-64bit.deb
sudo dpkg -i trivy_0.1.6_Linux-64bit.deb
cd /root/Downloads/Frameworks/
rmdir trivy


#V3n0M-Scanner

git clone https://github.com/v3n0m-Scanner/V3n0M-Scanner.git
cd V3n0M-Scanner
sudo pip3 install -r requirements.txt
sudo python3 setup.py install

#OWASP-Nettacker

cd mkdir /root/Downloads/Frameworks/
git clone https://github.com/zdresearch/OWASP-Nettacker.git										

#dawnscanner

git clone https://github.com/thesp0nge/dawnscanner.git
cd dawnscanner
bundle install
rake install

#arachni

cd /root/Downloads/Frameworks/
mkdir arachni
cd arachni
wget https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-linux-x86_64.tar.gz.sha512

#Zeus-Scanner

cd /root/Downloads/Frameworks/
git clone https://github.com/ekultek/zeus-scanner.git
cd zeus-scanner
sudo pip install -r requirements.txt

#ATSCAN SCANNER

cd /root/Downloads/Frameworks/
git clone https://github.com/AlisamTechnology/ATSCAN.git
cd ATSCAN
./install.sh

#Perun

cd /root/Downloads/Frameworks/
git clone https://github.com/WyAtu/Perun.git

#rapidscan

git clone https://github.com/skavngr/rapidscan.git
cd rapidscan
chmod +x rapidscan.py

#fsociety 

cd /root/Downloads/Frameworks/
git clone https://github.com/Manisso/fsociety.git
cd fsociety
./install.sh

#rescope

go get -u github.com/root4loot/rescope

#waybackurls

go get github.com/tomnomnom/waybackurls

#aquatone

cd /root/Downloads/Frameworks/
wget -P aquatone https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip

#autosploit

git clone https://github.com/NullArray/AutoSploit
cd AutoSploit
chmod +x install.sh
./install.sh

#SSRFmap

cd /root/Downloads/Frameworks/
git clone https://github.com/swisskyrepo/SSRFmap
cd SSRFmap/
sudo pip3 install -r requirements.txt

#FeatherDuster

cd /root/Downloads/Frameworks/
git clone https://github.com/nccgroup/featherduster.git
cd featherduster
sudo python setup.py install

#NoSQLmap

cd /root/Downloads/Frameworks/
git clone https://github.com/codingo/NoSQLMap.git
cd NoSQLMap
sudo python setup.py install

#AWSBucketDump

cd /root/Downloads/Frameworks/
git clone https://github.com/jordanpotti/AWSBucketDump.git
cd AWSBucketDump4
sudo pip3 install -r requirements.txt

#GitHacker

cd /root/Downloads/Frameworks/
git clone https://github.com/wangyihang/GitHacker.git

#pureblood

git clone https://github.com/cr4shcod3/pureblood
cd pureblood
sudo pip3 install -r requirements.txt 

#Lazy

cd /root/Downloads/Frameworks/
git clone https://github.com/arismelachroinos/lscript.git
cd lscript
chmod +xinstall.sh
./install.sh

#masscan

cd /root/Downloads/Frameworks/
git clone https://github.com/robertdavidgraham/masscan
cd masscan
make

#ReconCat

cd /root/Downloads/Frameworks/
git clone https://github.com/daudmalik06/ReconCat

#JSParser

git clone https://github.com/nahamsec/JSParser.git
cd JSParser
sudo apt-get install python-pycurl
sudo python setup.py install

#Parameth

cd /root/Downloads/Frameworks/
git clone https://github.com/maK-/parameth.git
cd parameth
sudo pip install -r requirements.txt

#Joomscan

cd /root/Downloads/Frameworks/
git clone https://github.com/rezasp/joomscan.git

#vulnx

git clone https://github.com/anouarbensaad/vulnx.git
cd VulnX
chmod +x install.sh
./install.sh

#Reconnoitre 

cd /root/Downloads/Frameworks/
git clone https://github.com/codingo/Reconnoitre.git
sudo python3 setup.py install

#tidos_framework

cd /root/Downloads/Frameworks/
git clone https://github.com/0xinfection/tidos-framework.git
cd tidos-framework
chmod +x install
sudo pip install xmpppy
sudo pip install ez_setup
./install

#Interlace

cd /root/Downloads/Frameworks/
git clone  https://github.com/codingo/Interlace.git
cd Interlace
sudo python3 setup.py install

#XSStrike

cd /root/Downloads/Frameworks/
git clone https://github.com/s0md3v/XSStrike.git

#SubOver

go get github.com/Ice3man543/SubOver

#SubdomainTakeOverTools

git clone https://github.com/buckhacker/SubDomainTakeoverTools.git

#S3Scanner

git clone https://github.com/sa7mon/S3Scanner.git
cd S3Scanner
sudo pip install -r requirements.txt

#open-redirect-scanner

cd /root/Downloads/Frameworks/
git clone https://github.com/ak1t4/open-redirect-scanner.git

#Reconcobra

git clone https://github.com/haroonawanofficial/ReconCobra.git
cd Reconcobra
sudo chmod u+x *.sh
./Kali_Installer.sh


#w3af (don't try to install w3af_gui as it causes lots of errors with python-webkit)

cd /root/Downloads/Frameworks/
git clone --depth 1 https://github.com/andresriancho/w3af.git
cd w3af
./w3af_console
sudo /tmp/w3af_dependency_install.sh

#VHostScan

cd /root/Downloads/Frameworks/
git clone https://github.com/codingo/VHostScan.git

#Linkfinder

cd /root/Downloads/Frameworks/
git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder
sudo python setup.py install

#waybackunifier
go get github.com/mhmdiaa/waybackunifier

#inSp3ctor

cd /root/Downloads/Frameworks/
git clone https://github.com/brianwarehime/inSp3ctor.git

#waybacksqliscanner

git clone https://github.com/ghostlulzhacks/waybackSqliScanner.git

#bucket-finder

wget https://digi.ninja/files/bucket_finder_1.1.tar.bz2
tar -xvf bucket_finder_1.1.tar.bz2
rm bucket_finder_1.1.tar.bz2

#ezXSS

git clone https://github.com/ssl/ezXSS.git
     
#bXSS

git clone https://github.com/LewisArdern/bXSS.git

#okadminfindeer3

sudo apt install tor
sudo apt install python3-socks
git clone https://github.com/mIcHyAmRaNe/okadminfinder3.git
cd okadminfinder3
pip3 install --user -r requirements.txt
chmod +x okadminfinder.py

#CMSmap

cd /root/Downloads/Frameworks/
git clone https://github.com/Dionach/CMSmap
cd CMSmap
python3 setup.py install

#lazys3

cd /root/Downloads/Frameworks/
git clone https://github.com/nahamsec/lazys3.git

#virtual-host-discovery

git clone https://github.com/jobertabma/virtual-host-discovery.git

#Xsser

sudo pip3 install pycurl bs4 geoip2 gobject cairocffi
git clone https://github.com/epsylon/xsser.git
cd xsser
apt-get install libgeoip-dev
pip3 install GeoIP
make install
python3 setup.py install

#crlf injection

cd /root/Downloads/Frameworks/
git clone https://github.com/random-robbie/CRLF-Injection-Scanner.git
cd CRLF-Injection-Scanner
sudo pip3 install -r requirements

#angularjs xss

cd /root/Downloads/Frameworks/
git clone -b develop https://github.com/tijme/angularjs-csti-scanner.git
cd angularjs
python3 setup.py install

#autoSubTakeover

cd /root/Downloads/Frameworks/
git clone https://github.com/JordyZomer/autoSubTakeover.git
cd autoSubTakeover
python3 setup.py install


#s3 bucket checker

mkdir /root/Downloads/Frameworks/s3_bucket_checker
cd s3_bucket_checker
wget https://gist.githubusercontent.com/random-robbie/b0c8603e55e22b21c49fd80072392873/raw//bucket_list.sh
wget https://gist.githubusercontent.com/random-robbie/b452cc3e1aa99cfeba764e70b5a26dc8/raw/bucket_upload.sh


#AWS-Scanner

go get github.com/random-robbie/AWS-Scanner

#inception

go get github.com/proabiral/inception

#OpenDoor

cd /root/Downloads/Frameworks/
git clone https://github.com/stanislav-web/OpenDoor.git
cd OpenDoor/
pip install -r requirements.txt
chmod +x opendoor.py

#GoogD0rke

cd /root/Downloads/Frameworks/
git clone https://github.com/ZephrFish/GoogD0rker.git
cd GoogD0rker
pip install -r rerquirements

#bug bounty dork

cd /root/Downloads/Frameworks/
git clone https://github.com/random-robbie/bugbountydork.git

#bounty-targets-data

cd /root/Downloads/Payloads_and_ Lists/
git clone https://github.com/arkadiyt/bounty-targets-data.git

#commonspeak2

wget https://github.com/assetnote/commonspeak2/releases/download/v0.1.4/commonspeak2_0.1.4_Linux_x86_64.tar.gz
tar -xvf commonspeak2_0.1.4_Linux_x86_64.tar.gz
rm commonspeak2_0.1.4_Linux_x86_64.tar.gz

#seclists

git clone https://github.com/danielmiessler/SecLists.git

#RobotsDisallowed

git clone https://github.com/danielmiessler/RobotsDisallowed.git

#wordlist

git clone https://github.com/jeanphorn/wordlist.git


#jhaddix web scripts

cd jhaddix
git clone https://github.com/jhaddix/mywebappscripts.git

#all.txt
wget https://gist.github.com/jhaddix/86a06c5dc309d08580a018c66354a056/archive/96f4e51d96b2203f19f6381c8c545b278eaa0837.zip

#content_discovery_all.txt

wget https://gist.github.com/jhaddix/b80ea67d85c13206125806f0828f4d10/archive/c81a34fe84731430741e0463eb6076129c20c4c0.zip

#cloud_metadata.txt

wget https://gist.github.com/jhaddix/78cece26c91c6263653f31ba453e273b/archive/a4869d58a5ce337d1465c2d1b29777b9eecd371f.zip

#WAHH

wget https://gist.github.com/jhaddix/6b777fb004768b388fefadf9175982ab/archive/c9bb46af0ed31bdabac3dda1dd0fafddfd8f329e.zip

#minesweeper

cd /root/Downloads/Tools/burp/
git clone https://github.com/codingo/Minesweeper.git

#Hunt - burpsuite

git clone https://github.com/bugcrowd/HUNT.git

#jython

cd /root/Downloads/Tools/jython/
wget http://search.maven.org/remotecontent?filepath=org/python/jython-standalone/2.7.1/jython-standalone-2.7.1.jar

#cheatsheet.pdf

cd /root/Downloads/Documents/
wget https://github.com/appsecco/bugcrowd-levelup-subdomain-enumeration/raw/master/cheatsheet.pdf

#esoteric subdomain enumeration 

wget https://github.com/appsecco/bugcrowd-levelup-subdomain-enumeration/raw/master/esoteric_subdomain_enumeration_techniques.pdf


#Need Manual Installation due to errors

#OWASP-Nettacker
#sudo pip3 install -r requirements.txt
#syntax errors are caused while installation due to specific version of modules,
#removing versions solves the issue.pydns is a python2 requirement remove that too

#arachni
#need extraction and installation

#Aquatone
#Needs extraction

#ReconCat
#It is a php file
