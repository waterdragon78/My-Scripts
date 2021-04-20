#!/bin/bash

echo
echo
echo
PS3='Welcome to my script hub! Would you like to download or execute a script? (When you choose to execute a script it will execute directly in this script): '
options=("Download" "Execute" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Download")
            echo "you chose to $opt a script"
PS3='Which script would you like to download?: '
options=("MacOS Downloader" "MacOS Installer Maker" "BearVirus Prank" "Reboot" "Shutdown" "Starwars" "Ubuntu Downloader and Installer Maker")
select opt in "${options[@]}"
do
    case $opt in
        "MacOS Downloader")
            echo "you chose $opt"
read -r -p "Would you like to begin? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        cd ~/downloads
        wget https://raw.githubusercontent.com/waterdragon78/My-Scripts/main/Utility%20Scripts/MacOS%20Installer%20Downloader.sh
        chmod a+x MacOS\ Installer\ Downloader.sh
        read -r -p "Done! Would you like download or execute another script? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        break
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        exit
        ;;
esac
            ;;
        "MacOS Installer Maker")
            echo "you chose $opt"
read -r -p "Would you like to begin? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        cd ~/downloads
        wget https://raw.githubusercontent.com/waterdragon78/My-Scripts/main/Utility%20Scripts/MacOS%20Installer%20Downloader.sh
        chmod a+x MacOS\ Installer\ Downloader.sh
        read -r -p "Done! Would you like download or execute another script? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        break
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        exit
        ;;
esac
            ;;
        "BearVirus Prank")
            echo "you chose $opt"
read -r -p "Would you like to begin? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        cd ~/downloads
        wget https://raw.githubusercontent.com/waterdragon78/My-Scripts/main/Prank%20Scripts/BearVirus.sh
        chmod a+x BearVirus.sh
        read -r -p "Done! Would you like download or execute another script? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        break
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        exit
        ;;
esac
            ;;
        "Reboot")
            echo "you chose $opt"
read -r -p "Would you like to begin? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        cd ~/downloads
        wget https://raw.githubusercontent.com/waterdragon78/My-Scripts/main/Convenience%20Scripts/Reboot.sh
        chmod a+x reboot.sh
        read -r -p "Done! Would you like download or execute another script? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        break
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        exit
        ;;
esac
            ;;
        "Shutdown")
            echo "you chose $opt"
read -r -p "Would you like to begin? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        cd ~/downloads
        wget https://github.com/waterdragon78/My-Scripts/blob/main/Convenience%20Scripts/Shutdown.sh
        chmod a+x Shutdown.sh
        read -r -p "Done! Would you like download or execute another script? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        break
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        exit
        ;;
esac
            ;;
        "Starwars")
            echo "you chose $opt"
read -r -p "Would you like to begin? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        cd ~/downloads
        wget https://raw.githubusercontent.com/waterdragon78/My-Scripts/main/Entertainment%20Scripts/Star%20Wars.sh
        chmod a+x Starwars.sh
        read -r -p "Done! Would you like download or execute another script? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        break
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        exit
        ;;
esac
            ;;
        "Ubuntu Downloader and Installer Maker")
            echo "Sorry, $opt is not available yet. Please wait until it is released."
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            ;;
        "Execute")
            echo "you chose to $opt a script"
PS3='Which script would you like to execute?: '
options=("MacOS Downloader" "MacOS Installer Maker" "BearVirus Prank" "Reboot" "Shutdown" "Starwars" "Ubuntu Downloader and Installer Maker" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "MacOS Downloader")
            echo "you chose to execute $opt"
            sleep 1
Echo
Echo
Echo
Echo
read -r -p "This script needs the Xcode Command Line Tools to work properly. If you have it, respond with y, the script will continue normally. Would you like to install it? It's a 1-3 Gigabyte download depending on your version of MacOS. (Don't worry, this script will automatically install it for you). [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo "Checking Xcode CLI tools"
# Only run if the tools are not installed yet
# To check that try to print the SDK path
xcode-select -p &> /dev/null
if [ $? -ne 0 ]; then
  echo "Xcode CLI tools are not found. Installing them..."
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
  softwareupdate -i "$PROD" -v;
else
  echo "Xcode CLI tools are installed!"
fi
        ;;
    *)
        Exit
        ;;
esac
Echo
echo
PS3='Please enter your choice: '
options=("MacOS Leopard" "MacOS Snow Leopard" "MacOS Lion" "MacOS Mountain Lion" "MacOS Mavericks" "MacOS Yosemite" "MacOS El Capitan" "MacOS Sierra" "MacOS High Sierra" "MacOS Mojave" "MacOS Catalina" "MacOS Big Sur" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "MacOS Leopard")
            echo "you chose MacOS Leopard"
read -r -p "Warning! This will create additional files on your desktop and remove them once finished! Also, make sure there is not any files named leopard in your downloads folder as this will download MacOS Leopard into your downloads folder. Finally, a lot of stuff will spit out into this window and it may take a while depending on your WiFi connection, so maybe go get popcorn and watch some stuff while you wait. MacOS Leopard is about a 6.7 Gigabyte download. Would you like to begin and continue? [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
mkdir ~/desktop/macosinstallermakerfiles
cd ~/desktop/macosinstallermakerfiles
wget https://github.com/waterdragon78/MacOS-Installer-Downloader-Dependances/releases/download/1.0/7zFolder.zip
Unzip 7zFolder.zip
cd ~/desktop/macosinstallermakerfiles/7zFolder
Mv * /usr/local/bin
cd
Rm -R ~/desktop/macosinstallermakerfiles/7zFolder
cd ~/desktop/macosinstallermakerfiles
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod a+x gdown.pl
./gdown.pl https://drive.google.com/file/d/12E_JApvDNNsKY1MJh8V0gR4zPPzFqPuO/view Leopard.zip
7z x leopard.zip
rm leopard.zip
mv leopard.dmg ~/downloads/
rm -R ~/desktop/macosinstallermakerfiles
read -r -p "Finished! Would you like to download another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        Echo
        ;;
esac
            ;;
        "MacOS Snow Leopard")
            echo "you chose MacOS Snow Leopard"
read -r -p "Warning! This will create additional files on your desktop and remove them once finished! Also, make sure there is not any files named snowleopard in your downloads folder as this will download MacOS Snow Leopard into your downloads folder. Finally, a lot of stuff will spit out into this window and it may take a while depending on your WiFi connection, so maybe go get popcorn and watch some stuff while you wait. MacOS Snow Leopard is about a 6.1 Gigabyte download. Would you like to begin and continue? [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
mkdir ~/desktop/macosinstallermakerfiles
cd ~/desktop/macosinstallermakerfiles
wget https://github.com/waterdragon78/MacOS-Installer-Downloader-Dependances/releases/download/1.0/7zFolder.zip
Unzip 7zFolder.zip
cd ~/desktop/macosinstallermakerfiles/7zFolder
Mv * /usr/local/bin
cd
Rm -R ~/desktop/macosinstallermakerfiles/7zFolder
cd ~/desktop/macosinstallermakerfiles
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod a+x gdown.pl
./gdown.pl https://drive.google.com/file/d/12E_JApvDNNsKY1MJh8V0gR4zPPzFqPuO/view SnowLeopard.zip
7z x SnowLeopard.zip
rm SnowLeopard.zip
mv SnowLeopard.dmg ~/downloads/
Rm -R ~/desktop/macosinstallermakerfiles
read -r -p "Finished! Would you like to download another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        Echo
        ;;
esac
            ;;
        "MacOS Lion")
            echo "you chose MacOS Lion"
read -r -p "Warning! This will create additional files on your desktop and remove them once finished! Also, make sure there is not any files named Lion in your downloads folder as this will download MacOS Lion into your downloads folder. Finally, a lot of stuff will spit out into this window and it may take a while depending on your WiFi connection, so maybe go get some popcorn and watch some stuff while you wait. MacOS Lion is about a 3.5 Gigabyte download. Would you like to begin and continue? [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
mkdir ~/desktop/macosinstallermakerfiles
cd ~/desktop/macosinstallermakerfiles
wget https://github.com/waterdragon78/MacOS-Installer-Downloader-Dependances/releases/download/1.0/7zFolder.zip
Unzip 7zFolder.zip
cd ~/desktop/macosinstallermakerfiles/7zFolder
Mv * /usr/local/bin
cd
Rm -R ~/desktop/macosinstallermakerfiles/7zFolder
cd ~/desktop/macosinstallermakerfiles
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod a+x gdown.pl
./gdown.pl https://drive.google.com/file/d/1xBNawAhPky6IPJFSMcJQXpaw5trVG-Ah/view Lion.zip
7z x Lion.zip
rm Lion.zip
mv Lion.dmg ~/downloads/
rm -R ~/desktop/macosinstallermakerfiles
read -r -p "Finished! Would you like to download another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        Echo
        ;;
esac
            ;;
        "MacOS Mountain Lion")
            You chose MacOS Mountain Lion
read -r -p "Warning! This will create additional files on your desktop and remove them once finished! Also, make sure there is not any files named MountainLion in your Applications folder as this will download MacOS Mountain Lion into your Applications folder. Finally, a lot of stuff will spit out into this window and it may take a while depending on your WiFi connection, so maybe go get some popcorn and watch some stuff while you wait. MacOS Mountain Lion is about a 4.1 Gigabyte download. Would you like to begin and continue? [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
mkdir ~/desktop/macosinstallermakerfiles
cd ~/desktop/macosinstallermakerfiles
wget https://github.com/waterdragon78/MacOS-Installer-Downloader-Dependances/releases/download/1.0/7zFolder.zip
Unzip 7zFolder.zip
cd ~/desktop/macosinstallermakerfiles/7zFolder
Mv * /usr/local/bin
cd
Rm -R ~/desktop/macosinstallermakerfiles/7zFolder
cd ~/desktop/macosinstallermakerfiles
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod a+x gdown.pl
./gdown.pl https://drive.google.com/file/d/1vSQFihH53hn5nemiJPx9P3MPB0kh6eHX/view MountainLion.zip
7z x MountainLion.zip
rm MountainLion.zip
mv Mountain\ Lion.app ~/Applications
rm -R ~/desktop/macosinstallermakerfiles
read -r -p "Finished! Would you like to download another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        Echo
        ;;
esac
            ;;
        "MacOS Mavericks")
            echo "you chose MacOS Mavericks"
read -r -p "Warning! This will create additional files on your desktop and remove them once finished! Also, make sure there is not any files named Mavericks in your Applications folder as this will download MacOS Mavericks into your Applications folder. Finally, a lot of stuff will spit out into this window and it may take a while depending on your WiFi connection, so maybe go get some popcorn and watch some stuff while you wait. MacOS Mavericks is about a 5 Gigabyte download. Would you like to begin and continue? [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
mkdir ~/desktop/macosinstallermakerfiles
cd ~/desktop/macosinstallermakerfiles
wget https://github.com/waterdragon78/MacOS-Installer-Downloader-Dependances/releases/download/1.0/7zFolder.zip
Unzip 7zFolder.zip
cd ~/desktop/macosinstallermakerfiles/7zFolder
Mv * /usr/local/bin
cd
Rm -R ~/desktop/macosinstallermakerfiles/7zFolder
cd ~/desktop/macosinstallermakerfiles
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod a+x gdown.pl
./gdown.pl https://drive.google.com/file/d/1bXV67qYUa2pP04yXMjUjFdB7O1aAQuMw/view Mavericks.zip
7z x Mavericks.zip
rm Mavericks.zip
mv Mavericks.app /applications/
Rm -R ~/desktop/macosinstallermakerfiles
read -r -p "Finished! Would you like to download another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        Echo
        ;;
esac
            ;;
        "MacOS Yosemite")
            echo "you chose MacOS Yosemite"
read -r -p "Warning! This will create additional files on your desktop and remove them once finished! Also, make sure there is not any files named Yosemite in your downloads folder as this will download MacOS Yosemite into your downloads folder. Finally, a lot of stuff will spit out into this window and it may take a while depending on your WiFi connection, so maybe go get some popcorn and watch some stuff while you wait. MacOS Yosemite is about a 4.8 Gigabyte download. Would you like to begin and continue? [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
mkdir ~/desktop/macosinstallermakerfiles
cd ~/desktop/macosinstallermakerfiles
wget https://github.com/waterdragon78/MacOS-Installer-Downloader-Dependances/releases/download/1.0/7zFolder.zip
Unzip 7zFolder.zip
cd ~/desktop/macosinstallermakerfiles/7zFolder
Mv * /usr/local/bin
cd
Rm -R ~/desktop/macosinstallermakerfiles/7zFolder
cd ~/desktop/macosinstallermakerfiles
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod a+x gdown.pl
./gdown.pl https://drive.google.com/file/d/1YEKSMAniX--tXWSgBnAK7Vt0wrL1WpiA/view Yosemite.zip
7z x Yosemite.zip
rm Yosemite.zip
mv Yosemite.app /applications/
Rm -R ~/desktop/macosinstallermakerfiles
read -r -p "Finished! Would you like to download another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        Echo
        ;;
esac
            ;;
        "MacOS El Capitan")
            echo "you chose MacOS El Capitan"
read -r -p "Warning! This will create additional files on your desktop and remove them once finished! Also, make sure there is not any files named ElCapitan in your Applications folder as this will download MacOS El Capitan into your Applications folder. Finally, a lot of stuff will spit out into this window and it may take a while depending on your WiFi connection, so maybe go get some popcorn and watch some stuff while you wait. MacOS El Capitan is about a 5.8 Gigabyte download. Would you like to begin and continue? [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
mkdir ~/desktop/macosinstallermakerfiles
cd ~/desktop/macosinstallermakerfiles
wget https://github.com/waterdragon78/MacOS-Installer-Downloader-Dependances/releases/download/1.0/7zFolder.zip
Unzip 7zFolder.zip
cd ~/desktop/macosinstallermakerfiles/7zFolder
Mv * /usr/local/bin
cd
Rm -R ~/desktop/macosinstallermakerfiles/7zFolder
cd ~/desktop/macosinstallermakerfiles
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod a+x gdown.pl
./gdown.pl https://drive.google.com/file/d/1lS4VardnEoCz9e4YIN92Jfi0iUB1qqiQ/view ElCapitan.zip
7z x ElCapitan.zip
rm ElCapitan.zip
mv ElCapitan.app /applications/
Rm -R ~/desktop/macosinstallermakerfiles
read -r -p "Finished! Would you like to download another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        Echo
        ;;
esac
            ;;
        "MacOS Sierra")
            echo "you chose MacOS Sierra"
read -r -p "Warning! This will create additional files on your desktop and remove them once finished! Also, make sure there is not any files named Sierra in your Applications folder as this will download MacOS Sierra into your Applications folder. Finally, a lot of stuff will spit out into this window and it may take a while depending on your WiFi connection, so maybe go get some popcorn and watch some stuff while you wait. macOS Sierra is about a 4.4 Gigabyte download. Would you like to begin and continue? [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
mkdir ~/desktop/macosinstallermakerfiles
cd ~/desktop/macosinstallermakerfiles
wget https://github.com/waterdragon78/MacOS-Installer-Downloader-Dependances/releases/download/1.0/7zFolder.zip
Unzip 7zFolder.zip
cd ~/desktop/macosinstallermakerfiles/7zFolder
Mv * /usr/local/bin
cd
Rm -R ~/desktop/macosinstallermakerfiles/7zFolder
cd ~/desktop/macosinstallermakerfiles
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod a+x gdown.pl
./gdown.pl https://drive.google.com/file/d/1ai19kA7BKBIfaH9HsU9PDH9zoZ_-N1DE/view Sierra.zip
7z x Sierra.zip
rm Sierra.zip
mv Sierra.app /applications/
Rm -R ~/desktop/macosinstallermakerfiles
read -r -p "Finished! Would you like to download another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        Echo
        ;;
esac
            ;;
        "MacOS High Sierra")
            echo "you chose MacOS High Sierra"
read -r -p "Warning! This will create additional files on your desktop and remove them once finished! Also, make sure there is not any files named HighSierra in your Applications folder as this will download MacOS High Sierra into your Applications folder. Finally, a lot of stuff will spit out into this window and it may take a while depending on your WiFi connection, so maybe go get some popcorn and watch some stuff while you wait. MacOS High Sierra is about a 4.9 Gigabyte download. Would you like to begin and continue? [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
mkdir ~/desktop/macosinstallermakerfiles
cd ~/desktop/macosinstallermakerfiles
wget https://github.com/waterdragon78/MacOS-Installer-Downloader-Dependances/releases/download/1.0/7zFolder.zip
Unzip 7zFolder.zip
cd ~/desktop/macosinstallermakerfiles/7zFolder
Mv * /usr/local/bin
cd
Rm -R ~/desktop/macosinstallermakerfiles/7zFolder
cd ~/desktop/macosinstallermakerfiles
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod a+x gdown.pl
./gdown.pl https://drive.google.com/file/d/1yY4ES_mmqTQYi7SSstfC4BvN8Dl100ow/view HighSierra.zip
7z x HighSierra.zip
rm HighSierra.zip
mv HighSierra.app /applications/
Rm -R ~/desktop/macosinstallermakerfiles
read -r -p "Finished! Would you like to download another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        Echo
        ;;
esac
            ;;
        "MacOS Mojave")
            echo "you chose MacOS Mojave"
read -r -p "Warning! This will create additional files on your desktop and remove them once finished! Also, make sure there is not any files named Mojave in your Applications folder as this will download MacOS Mojave into your Applications folder. Finally, a lot of stuff will spit out into this window and it may take a while depending on your WiFi connection, so maybe go get some popcorn and watch some stuff while you wait. macOS Mojave is about a 5.6 Gigabyte download. Would you like to begin and continue? [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
mkdir ~/desktop/macosinstallermakerfiles
cd ~/desktop/macosinstallermakerfiles
wget https://github.com/waterdragon78/MacOS-Installer-Downloader-Dependances/releases/download/1.0/7zFolder.zip
Unzip 7zFolder.zip
cd ~/desktop/macosinstallermakerfiles/7zFolder
Mv * /usr/local/bin
cd
Rm -R ~/desktop/macosinstallermakerfiles/7zFolder
cd ~/desktop/macosinstallermakerfiles
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod a+x gdown.pl
./gdown.pl https://drive.google.com/file/d/1n4sYdtHcUebnwYG_FKrgnjq1cVPW-2ta/view Mojave.zip
7z x Mojave.zip
rm Mojave.zip
mv Mojave.app /applications/
Rm -R ~/desktop/macosinstallermakerfiles
read -r -p "Finished! Would you like to download another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        Echo
        ;;
esac
            ;;
        "MacOS Catalina")
            echo "you chose MacOS Catalina"
read -r -p "Warning! This will create additional files on your desktop and remove them once finished! Also, make sure there is not any files named Catalina in your Applications folder as this will download MacOS Catalina into your Applications folder. Finally, a lot of stuff will spit out into this window and it may take a while depending on your WiFi connection, so maybe go get some popcorn and watch some stuff while you wait. MacOS Catalina is about a 7.7 Gigabyte download. Would you like to begin and continue? [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
mkdir ~/desktop/macosinstallermakerfiles
cd ~/desktop/macosinstallermakerfiles
wget https://github.com/waterdragon78/MacOS-Installer-Downloader-Dependances/releases/download/1.0/7zFolder.zip
Unzip 7zFolder.zip
cd ~/desktop/macosinstallermakerfiles/7zFolder
Mv * /usr/local/bin
cd
Rm -R ~/desktop/macosinstallermakerfiles/7zFolder
cd ~/desktop/macosinstallermakerfiles
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod a+x gdown.pl
./gdown.pl https://drive.google.com/file/d/1qiwAFy5TEJCYjXV_gEhz3r3QQO_vP7zJ/view Catalina.zip
7z x Catalina.zip
rm Catalina.zip
mv Catalina.app /applications/
Rm -R ~/desktop/macosinstallermakerfiles
read -r -p "Finished! Would you like to download another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        Echo
        ;;
esac
            ;;
        "MacOS Big Sur")
            echo "you chose MacOS Big Sur"
read -r -p "Warning! This will create additional files on your desktop and remove them once finished! Also, make sure there is not any files named BigSur in your Applications folder as this will download MacOS Big Sur into your Applications folder. Finally, a lot of stuff will spit out into this window and it may take a while depending on your WiFi connection, so maybe go get some popcorn and watch some stuff while you wait. MacOS Big Sur is about an 11-12 Gigabyte download. Would you like to begin and continue? [Y/N]: " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
mkdir ~/desktop/macosinstallermakerfiles
cd ~/desktop/macosinstallermakerfiles
wget https://github.com/waterdragon78/MacOS-Installer-Downloader-Dependances/releases/download/1.0/7zFolder.zip
Unzip 7zFolder.zip
cd ~/desktop/macosinstallermakerfiles/7zFolder
Mv * /usr/local/bin
Rm -R ~/desktop/macosinstallermakerfiles/7zFolder
cd
cd ~/desktop/macosinstallermakerfiles
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod a+x gdown.pl
./gdown.pl https://drive.google.com/file/d/18lGXKTHH--z-_ksG3iXRYziQyhVfAVXR/view BigSur.zip
7z x BigSur.zip
rm BigSur.zip
mv BigSur.app /applications/
Rm -R ~/desktop/macosinstallermakerfiles
read -r -p "Finished! Would you like to download another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo
        ;;
    *)
        exit
        ;;
esac
        ;;
    *)
        Echo
        ;;
esac
            ;;
        "Exit")
            break
            ;;
        *) echo "invalid MacOS Version $REPLY";;
    esac
done
            ;;
        "MacOS Installer Maker")
            echo "you chose to execute $opt"
echo
echo
echo
echo
PS3='Welcome to MacOS Installer Maker! Please put your Installer App in your apps folder and name it to the corresponding version. Example Yosemite or Mojave. Please name your Volume to the corresponding version. Example Yosemite or Mojave. If The Install Maker Fails it is likely that you do not have the correct Install App, make sure it is al least 3 Gigabytes in size. If you need an installer please head to this script made by me https://github.com/waterdragon78/MacOS-Installer-Downloader. WARNING! THIS SCRIPT IS NOT RESPONSIBLE FOR DATA LOSS OF ANY KIND! PLEASE PROCEED WITH CAUTION! Your Selection: '
options=("MacOS Leopard" "MacOS Snow Leopard" "MacOS Lion" "MacOS Mountain Lion" "MacOS Mavericks" "MacOS Yosemite" "MacOS El Capitan" "MacOS Sierra" "MacOS High Sierra" "MacOS Mojave" "MacOS Catalina" "MacOS Big Sur" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "MacOS Leopard")
echo
            echo "you chose MacOS Version 10.5 which is $opt"
echo
read -r -p "Please make sure that your MacOS Leopard dmg is in your downloads folder and named Leopard, your Installer drive is mounted and you know what drive it is (do diskutil list in a terminal window or use Disk Utility), and your installer drive is at least 8 Gigabytes. Would you like to continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
echo
        read -p "Please enter which disk or partition you will like to use: " Leopard
asr restore --source ~/Downloads/Leopard.dmg --target /dev/${Leopard} --erase --noprompt
echo
read -r -p "Done! Thank You for Using MacOS Installer Maker, would you like to make another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        Have a Great Day!
exit
        ;;
esac
            ;;
        "MacOS Snow Leopard")
            echo "you chose MacOS Version 10.6 which is $opt"
echo            
read -r -p "Please make sure that your MacOS Snow Leopard dmg is in your downloads folder and named SnowLeopard, your Installer drive is mounted and you know what drive it is (do diskutil list in a terminal window or use Disk Utility), and your installer drive is at least 10 Gigabytes. Would you like to continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
echo
        read -p "Please enter which disk or partition you will like to use: " SnowLeopard
asr restore --source ~/Downloads/SnowLeopard.dmg --target /dev/${Leopard} --erase --noprompt
echo
read -r -p "Done! Thank You for Using MacOS Installer Maker, would you like to make another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        Have a Great Day!
exit
        ;;
esac
            ;;
        "MacOS Lion")
            echo "you chose MacOS Version 10.7 which is $opt"
echo            
read -r -p "Please make sure that your MacOS Lion dmg is in your downloads folder and named Lion, your Installer drive is mounted and you know what drive it is (do diskutil list in a terminal window or use Disk Utility), and your installer drive is at least 10 Gigabytes. Would you like to continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
echo
        read -p "Please enter which disk or partition you will like to use: " Lion
asr restore --source ~/Downloads/Lion.dmg --target /dev/${Lion} --erase --noprompt
echo
read -r -p "Done! Thank You for Using MacOS Installer Maker, would you like to make another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        Have a Great Day!
exit
        ;;
esac
            ;;
        "MacOS Mountain Lion")
            echo "you chose MacOS Version 10.8 which is $opt"
echo            
read -r -p "Please make sure that your MacOS Mountain Lion app is in your Applications folder and named MountainLion, your Installer drive is mounted and you know what drive it is (do diskutil list in a terminal window or use Disk Utility), and your installer drive is at least 10 Gigabytes. Would you like to continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2 
echo
        read -p "Please enter which disk or partition you will like to use: " MountainLion
asr restore --source /applications/MountainLion.app/Contents/SharedSupport/InstallESD.dmg --target /dev/${MountainLion} --erase --noprompt
echo
read -r -p "Done! Thank You for Using MacOS Installer Maker, would you like to make another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        Have a Great Day!
exit
        ;;
esac
            ;;
        "MacOS Mavericks")
            echo "you chose MacOS Version 10.9 which is $opt"
echo            
Sleep 2
read -r -p "Please make sure that your MacOS Mavericks Install App in in /Applications and Named Mavericks, your Installer drive and is Mounted and named Mavericks, and your Installer drive is at lease 7 Gigabytes. Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
echo
Echo "I need Root Permission To Erase The Drive, Please Enter Your Password Below. Thank You!"
Sudo echo "Thanks!"
Sudo /Applications/Mavericks.app/Contents/Resources/createinstallmedia --volume /volumes/Mavericks --applicationpath /Applications/Mavericks.app
echo
read -r -p "Done! You can find your Drive at Install MacOS Mavericks or Similar. Thank You for Using MacOS Installer Maker, would you like to make another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        Have a Great Day!
exit
        ;;
esac
            ;;
        "MacOS Yosemite")
            echo "you chose MacOS Version 10.10 which is $opt"
echo            
Sleep 2
read -r -p "Please make sure that your MacOS Yosemite Install App in in /Applications and Named Yosemite, your Installer drive and is Mounted and named Yosemite, and your Installer Drive is at least 7 Gigabytes. Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
echo
Echo "I need Root Permission To Erase The Drive, Please Enter Your Password Below. Thank You!"
Sudo echo "Thanks!"
Sudo /Applications/Yosemite.app/Contents/Resources/createinstallmedia --volume /volumes/Yosemite --applicationpath /Applications/Yosemite.app
echo
read -r -p "Done! You can find your Drive at Install MacOS Yosemite or Similar. Thank You for Using MacOS Installer Maker, would you like to make another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        Have a Great Day!
exit
        ;;
esac
            ;;
        "MacOS El Capitan")
            echo "you chose MacOS Version 10.11 which is $opt"
echo            
Sleep 2
read -r -p "Please make sure that your MacOS El Capitan Install App in in /Applications and Named Capitan, your Installer drive and is Mounted and named Capitan, and your Installer Drive is at least 7 Gigabytes. Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
echo
Echo "I need Root Permission To Erase The Drive, Please Enter Your Password Below. Thank You!"
Sudo echo "Thanks!"
Sudo /Applications/Capitan.app/Contents/Resources/createinstallmedia --volume /volumes/Capitan --applicationpath /Applications/Capitan.app
echo
read -r -p "Done! You can find your Drive at Install MacOS El Capitan or Similar. Thank You for Using MacOS Installer Maker, would you like to make another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        Have a Great Day!
exit
        ;;
esac
            ;;
        "MacOS Sierra")
            echo "you chose MacOS Version 10.12 which is $opt"
echo            
Sleep 2
read -r -p "Please make sure that your macOS Sierra Install App in in /Applications and Named Sierra, your Installer drive and is Mounted and named Sierra, and your Installer Drive is at least 7 Gigabytes. Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
echo
Echo "I need Root Permission To Erase The Drive, Please Enter Your Password Below. Thank You!"
Sudo echo "Thanks!"
Sudo /Applications/Sierra.app/Contents/Resources/createinstallmedia --volume /volumes/Sierra --applicationpath /Applications/Sierra.app
echo
read -r -p "Done! You can find your Drive at Install MacOS El Sierra or Similar. Thank You for Using MacOS Installer Maker, would you like to make another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        Have a Great Day!
exit
        ;;
esac
            ;;
        "MacOS High Sierra")
            echo "you chose MacOS Version 10.13 which is $opt"
echo            
Sleep 2
read -r -p "Please make sure that your MacOS High Sierra Install App in in /Applications and Named HighSierra, your Installer drive and is Mounted and named HighSierra, and your Installer Drive is at least 7 Gigabytes. Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
echo
Echo "I need Root Permission To Erase The Drive, Please Enter Your Password Below. Thank You!"
Sudo echo "Thanks!"
Sudo /Applications/HighSierra.app/Contents/Resources/createinstallmedia --volume /volumes/HighSierra --applicationpath /Applications/HighSierra.app
echo
read -r -p "Done! You can find your Drive at Install MacOS High Sierra or Similar. Thank You for Using MacOS Installer Maker, would you like to make another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        Have a Great Day!
exit
        ;;
esac
            ;;
        "MacOS Mojave")
            echo "you chose MacOS Version 10.14 which is $opt"
echo            
Sleep 2
read -r -p "Please make sure that your MacOS Mojave Install App in in /Applications and Named Mojave, your Installer drive and is Mounted and named Mojave, and your Installer Drive is at least 7 Gigabytes Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
echo
Echo "I need Root Permission To Erase The Drive, Please Enter Your Password Below. Thank You!"
Sudo echo "Thanks!"
Sudo /Applications/Mojave.app/Contents/Resources/createinstallmedia --volume /volumes/Mojave --applicationpath /Applications/Mojave.app
echo
read -r -p "Done! You can find your Drive at Install MacOS Mojave or Similar. Thank You for Using MacOS Installer Maker, would you like to make another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        Have a Great Day!
exit
        ;;
esac
            ;;
        "MacOS Catalina")
            echo "you chose MacOS Version 10.15 which is $opt"
echo            
Sleep 2
read -r -p "Please make sure that your MacOS Catalina Install App in in /Applications and Named Catalina, your Installer drive and is Mounted and named Catalina, and your Installer Drive is at least 10 Gigabytes. Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
echo
Echo "I need Root Permission To Erase The Drive, Please Enter Your Password Below. Thank You!"
Sudo echo "Thanks!"
Sudo /Applications/Catalina.app/Contents/Resources/createinstallmedia --volume /volumes/Catalina --applicationpath /Applications/Catalina.app
echo
read -r -p "Done! You can find your Drive at Install MacOS Catalina or Similar. Thank You for Using MacOS Installer Maker, would you like to make another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        Have a Great Day!
exit
        ;;
esac
            ;;
        "MacOS Big Sur")
            echo "you chose MacOS Version 11.0 which is $opt"
echo            
Sleep 2
read -r -p "Please make sure that your MacOS Big Sur Install App in in /Applications and Named BigSur, your Installer drive and is Mounted and named BigSur, and your Installer Drive is at least 15 Gigabytes. Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
echoSleep 2

Echo "I need Root Permission To Erase The Drive, Please Enter Your Password Below. Thank You!"
Sudo echo "Thanks!"
Sudo /Applications/BigSur.app/Contents/Resources/createinstallmedia --volume /volumes/BigSur --applicationpath /Applications/BigSur.app
echo
read -r -p "Done! You can find your Drive at Install MacOS Big Sur or Similar. Thank You for Using MacOS Installer Maker, would you like to make another installer? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        Have a Great Day!
exit
        ;;
esac
            ;;
        "Exit")
            echo "You chose to exit"
Sleep 1
read -r -p "Are you sure you want to exit? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        exit
        ;;
    *)
        echo
        ;;
esac
        ;;
        *) echo "invalid MacOS Version $REPLY";;
    esac
done
        ;;
        "BearVirus Prank")
            echo "you chose to execute $opt"
            sleep 1
            echo
            echo 
            echo
Echo
echo Please Enter Your Password To Continue:
Echo
Sudo echo Thanks!
Echo
Sleep 2
echo Loading BearVirus...
sleep 5
echo Executing Attack
sleep 2
echo
echo Deleting System Files...
sleep 3
echo 17 Percent Complete...
sleep 2
echo 29 Percent Complete...
sleep 3
echo 56 Percent Complete...
sleep 4
echo 99 Percent Complete...
sleep 1
echo 100 Percent Complete!
sleep 2
echo
echo Frying Motherboard...
sleep 2
echo 20 Percent Complete...
sleep 3
echo 70 Percent Complete...
sleep 2
echo 100 Percent Complete!
sleep 2
echo
echo Wiping Hard Drive...
sleep 2
echo This May Take A While...
sleep 2
echo 1 Percent Complete...
sleep 2
echo 7 Percent Complete...
sleep 2
echo 23 Percent Complete...
sleep 2
echo 47 Percent Complete...
sleep 2
echo 57 Percent Complete...
sleep 2
echo 69 Percent Complete...
sleep 2
echo 78 Percent Complete...
sleep 2
echo 96 Percent Complete...
sleep 2
echo 100 Percent Complete!
sleep 2
echo
echo Frying Portions of RAM to Make Computer Slower...
sleep 2
echo 49 Percent Complete...
sleep 4
echo 100 Percent Complete!
sleep 4
echo
echo Corrupting Graphics Card...
sleep 2
echo 65 Percent Complete...
sleep 2
echo 93 Percent Complete...
sleep 2
echo 100 Percent Complete!
sleep 3
echo
echo Gathering IP...
sleep 3
ipconfig getifaddr en0
sleep 2
ipconfig getifaddr en0
sleep 2
ipconfig getifaddr en0
sleep 2
ipconfig getifaddr en0
sleep 2
echo
echo Sending IP And Personal Data To Servers...
sleep 2
timeout 5 ping 51.161.99.39
sleep 2
echo
echo  BearVirus Just Destroyed your Computer... HAHAHHAHAHAHAHAH 
echo Shutting Down...
Sleep 2
sudo shutdown -h now
            ;;
        "Reboot")
            echo "you chose to execute $opt"
            sleep 1
            echo
            echo
            echo
            echo
read -r -p "This Is A Reboot Script, Do You Want To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Echo I Need Permission To Reboot This Computer, Please Enter Your Password Below:
Sudo echo Thanks!
Sleep 1
Echo Now Rebooting...
Sleep 2
Sudo Shutdown -r now
            ;;
        "Shutdown")
            echo "you chose to execute $opt"
            sleep 1
            echo
            echo
            echo
            echo
            read -r -p "This Is A Shutdown Script, Do You Want To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Echo I Need Permission To Shutdown This Computer, Please Enter Your Password Below:
Sudo echo Thanks!
Sleep 1
Echo Now Shutting Down...
Sleep 2
Sudo Shutdown -h now
            ;;
        "Starwars")
            echo "you chose to execute $opt"
            sleep 1
            ;;
        "Ubuntu Downloader and Installer Maker")
            echo "you chose to execute $opt"
            echo "$opt is not available yet, please wait until it is released."
            ;;
        "Exit")
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
            ;;
        "Exit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done