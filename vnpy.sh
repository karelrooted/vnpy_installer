#!/bin/bash

mkdir ~/.pip/
echo "[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> ~/.pip/pip.conf
wget https://repo.continuum.io/archive/Anaconda2-4.0.0-Linux-x86_64.sh
chmod +x Anaconda2-4.0.0-Linux-x86_64.sh
./Anaconda2-4.0.0-Linux-x86_64.sh
source ~/.bashrc
pip install --upgrade pip
pip install future
sudo apt-get install -y mongodb libboost-all-dev cmake git libsnappy-dev  python-snappy
sudo apt-get install -y build-essential libsodium23 libsodium-dev
sudo apt-get install -y python-dev
sudo apt install -y git vim
sudo apt-get install -y qt4-dev-tools
sudo apt-get install -y libqwt5-qt4 libqwt5-qt4-dev
sudo ln -s /usr/lib/x86_64-linux-gnu/libsodium.so.23.1.0 /usr/lib/x86_64-linux-gnu/libsodium.so.18
mkdir -p ~/go/src/github.com/vnpy
cd ~/go/src/github.com/vnpy
git clone https://github.com/vnpy/vnpy.git
cd vnpy/
bash install.sh
cd ~/Downloads/ && wget https://jaist.dl.sourceforge.net/project/pyqt/sip/sip-4.19.8/sip-4.19.8.tar.gz
tar zxvf sip-4.19.8.tar.gz && cd sip-4.19.8/
sudo python configure.py
sudo make install
cd .. && wget https://jaist.dl.sourceforge.net/project/pyqt/PyQt4/PyQt-4.12/PyQt4_gpl_x11-4.12.tar.gz
tar zxvf PyQt4_gpl_x11-4.12.tar.gz
cd PyQt4_gpl_x11-4.12/
sudo python configure-ng.py
sudo make
sudo make install
cd ~/go/src/github.com/vnpy/vnpy/examples/VnTrader/
echo "Please configure the CTP_connect.json and then exec: python run.py"
