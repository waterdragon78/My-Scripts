#!/bin/bash

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

