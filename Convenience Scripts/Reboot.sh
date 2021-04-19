#!/bin/bash

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