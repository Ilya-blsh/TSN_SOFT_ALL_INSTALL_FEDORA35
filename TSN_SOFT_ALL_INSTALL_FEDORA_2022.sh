#!/bin/sh

sudo dnf upgrade --refresh

# ------- multimedia  --------
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia

# ------- base soft  --------
sudo dnf install pavucontrol dnfdragora gthumb geary pdfshuffler qbittorrent gparted gtkhash obs-studio shotwell xfburn -y
sudo dnf install neofetch -y

# ------- calibre  --------
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

# ------- шрифты от MS  --------
#sudo dnf install curl cabextract xorg-x11-font-utils fontconfig
#sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

# ------- научные программы --------
#sudo dnf install kmplot kalgebra scidavis 

# ==================   раскомментируйте для Cinnamon   ==============================================
#sudo dnf install audacious audacious-plugins-* vlc retext flameshot okular kate xterm gnome-software
# ===================================================================================================

# ------- C/C++  --------
sudo dnf install gcc-c++

# ------- git  --------
sudo dnf install git

# ------- java  --------
sudo dnf install java-11-openjdk java-11-openjdk-devel
sudo alternatives --config java
sudo alternatives --config java_sdk_openjdk

# ------- python  --------
sudo dnf install python3-pip qt5-designer python3-tkinter python3-qt5-base python3-qt5-devel python3-pytz -y
pip install pyqt5 setuptools numpy pandas openpyxl xlrd python-docx XlsxWriter openpyxl Pillow ebooklib pykson bs4

# ------- mysql  --------
sudo dnf install https://repo.mysql.com//mysql80-community-release-fc35-2.noarch.rpm
sudo dnf install mysql-community-server
sudo systemctl start mysqld
sudo systemctl enable mysqld
sudo grep 'temporary password' /var/log/mysqld.log
#	PassW0Rd++
sudo mysql_secure_installation
sudo dnf install mysql-workbench -y
