
#!/bin/bash
# Bash Menu Script Example

echo
echo
echo
echo
PS3='Welcome to MacOS Installer Maker! Please put your Installer App in your apps folder and name it to the corresponding version. Example Yosemite or Mojave. Please name your Volume to the corresponding version. Example Yosemite or Mojave. If The Install Maker Fails it is likely that you do not have the correct Install App, make sure it is al least 3 Gigabytes in size. If you need an installer please head to macinstallers.tech, not sponsored tho lol. Your Selection: '
options=("MacOS Mavericks" "MacOS Yosemite" "MacOS El Capitan" "MacOS Sierra" "MacOS High Sierra" "MacOS Mojave" "MacOS Catalina" "MacOS Big Sur" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "MacOS Mavericks")
            echo "you chose MacOS Version 10.9 which is $opt"
Sleep 2
read -r -p "Please make sure that your MacOS Mavericks Install App in in /Applications and Named Mavericks, and your Installer drive and is Mounted and named Mavericks, Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
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
Sleep 2
read -r -p "Please make sure that your MacOS Yosemite Install App in in /Applications and Named Yosemite, and your Installer drive and is Mounted and named Yosemite, Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
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
Sleep 2
read -r -p "Please make sure that your MacOS El Capitan Install App in in /Applications and Named Capitan, and your Installer drive and is Mounted and named Capitan, Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
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
Sleep 2
read -r -p "Please make sure that your macOS Sierra Install App in in /Applications and Named Sierra, and your Installer drive and is Mounted and named Sierra, Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
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
Sleep 2
read -r -p "Please make sure that your MacOS High Sierra Install App in in /Applications and Named HighSierra, and your Installer drive and is Mounted and named HighSierra, Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
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
Sleep 2
read -r -p "Please make sure that your MacOS Mojave Install App in in /Applications and Named Mojave, and your Installer drive and is Mounted and named Mojave, Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
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
Sleep 2
read -r -p "Please make sure that your MacOS Catalina Install App in in /Applications and Named Catalina, and your Installer drive and is Mounted and named Catalina, Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
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
Sleep 2
read -r -p "Please make sure that your MacOS Big Sur Install App in in /Applications and Named BigSur, and your Installer drive and is Mounted and named BigSur, Would You Like To Continue? [Y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        Echo
        ;;
    *)
        exit
        ;;
esac
Sleep 2
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