##Nvidia Driver PPA and Install
sudo add-apt-repository ppa:graphics-drivers/dev
sudo apt-get update
sudo apt-get install nvidia-driver-415 -y

##Lutris Install
ver=$(lsb_release -sr); if [ $ver != "18.10" -a $ver != "18.04" -a $ver != "16.04" ]; then ver=18.04; fi
echo "deb http://download.opensuse.org/repositories/home:/strycore/xUbuntu_$ver/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/xUbuntu_$ver/Release.key -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install lutris -y

##Wine Install
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ cosmic main'
sudo apt update
sudo apt install --install-recommends winehq-stable -y

##Dependices for Battle.Net and DXVK
sudo apt-get install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libsqlite3-0:i386 -y
sudo apt install libvulkan1 libvulkan1:i386 -y


##Chrome Steam and Discord install
sudo apt-get install steam -y
sudo snap install spotify
sudo snap install discord
