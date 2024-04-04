sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt install -y wget gnupg lsb-release apt-transport-https ca-certificates

distro=$(if echo " una bookworm vanessa focal jammy bullseye vera uma " | grep -q " $(lsb_release -sc) "; then lsb_release -sc; else echo focal; fi)
wget https://download.opensuse.org/repositories/home:/bgstack15:/aftermozilla/Debian_Unstable/amd64/librewolf_123.0.1-1_amd64.deb
dpkg -i librewolf_123.0.1-1_amd64.deb

sudo apt purge firefox-esr -y

wget --trust-server-names https://mullvad.net/download/app/deb/latest
echo "DO: sudo dpkg -i mullvadpackpagehere"
sudo dpkg -i MullvadVPN-2024.1_amd64.deb

sudo apt install -y telegram-desktop tor torbrowser-launcher libreoffice 

sudo apt-get install apt-transport-https lsb-release curl
# Use this command on Debian Buster or older only.
echo "deb https://deb.i2p.net/ $(dpkg --status tzdata | grep Provides | cut -f2 -d'-') main" \ | sudo tee /etc/apt/sources.list.d/i2p.list
curl -o i2p-archive-keyring.gpg https://geti2p.net/_static/i2p-archive-keyring.gpg
sudo cp i2p-archive-keyring.gpg /usr/share/keyrings
sudo ln -sf /usr/share/keyrings/i2p-archive-keyring.gpg /etc/apt/trusted.gpg.d/i2p-archive-keyring.gpg
sudo apt-get uodate -y
sudo apt-get install i2p i2p-keyring -y

sudo apt install code-oss -y

touch startup.bash
sudo chmod +x startup.bash

s.txt > startup.bash 
mv startup.bash /etc/init.d/
ln -s /etc/init.ne/startup.bash /etc/rc.d

read -p "Would you like to get the OG skull back? (yes/no)" choice 
case $coice in
  yes ) sed -i 's/prompt_symbol=㉿/prompt_symbol=💀/' ~/.zshrc && source ~/.zshrc;;
  no ) echo "ok";

git clone https://github.com/Und3rf10w/kali-anonsurf
cd kali-anonsurf

