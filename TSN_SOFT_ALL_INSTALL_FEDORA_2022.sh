#!/bin/sh

sudo dnf update

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good gstreamer1-plugins-base

# sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-multimedia.repo
# sudo dnf install libdvdcss

sudo dnf install vlc
sudo dnf install audacious audacious-plugins-*

sudo dnf install gthumb pdfshuffler retext qbittorrent gparted gtkhash flameshot okular
sudo dnf install kate xterm obs-studio

sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

sudo dnf install gcc-c++

sudo dnf install https://repo.mysql.com//mysql80-community-release-fc35-1.noarch.rpm
sudo dnf install mysql-community-server

sudo dnf install git

sudo dnf install java-11-openjdk java-11-openjdk-devel
sudo alternatives --config java
sudo alternatives --config java_sdk_openjdk

sudo dnf install python3-pip qt5-designer python3-tkinter
sudo dnf install python3-qt5-base python3-qt5-devel python3-pytz
pip install pyqt5 setuptools numpy pandas 
pip install openpyxl xlrd python-docx XlsxWriter openpyxl
pip install Pillow ebooklib pykson bs4
