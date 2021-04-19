
#!/bin/bash
# Bash Menu Script Example

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