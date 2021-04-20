#!/bin/bash
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