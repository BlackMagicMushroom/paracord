# PARACORD

Paracord dot files framework. Simply fork paracord drop your dot files into the
 appropriate directory and you are locked and loaded.

## DIRECTORIES

 * \_bin/
 * bin/
 * core/
 * skel/
 * skel.cp/


### \_BIN
This directory will be symlinked to $HOME/bin, if one exists this will not happen. You will be informed
to update $HOME/bin manually.

### BIN
Paracord bin directory where paracord executable lives.  

### CORE
Paracord specific functions and files.  

### SKEL
All dot files and folders here will be symlinked from $PARACORDDIR/skel/{filename} to $HOME/{filename}.  
Dot files and folders should be prefixed with DOT (e.g. DOT.bashrc, DOT.login, DOT.vim) and will be
symlinked from $PARACORDDIR/skel/DOT.{filename} to $HOME/.{filename}

### SKEL.CP
All dot files and folders here will be copied from $PARACORDDIR/skel.cp/{filename} to $HOME/{filename}.  
Dot files and folders should be prefixed with DOT (e.g. DOT.bashrc, DOT.login, DOT.vim) and will be
copied from $PARACORDDIR/skel.cp/DOT.{filename} to $HOME/.{filename}


## paracord COMMAND

The paracord command currently has two available subcommands:
 
 * configure      - Updates your web\_install.sh file in your repo
 * configure-git  - Configure your ~/.gitconfig with your info
 * help           - Displays help dialog
 * install        - Installs your instance of Paracord
 * update         - Updates from your repo then executes appropritate commands
 * update-path    - Updates your .local\_env file to include the paracord command to your path
 * variables      - Displays Paracord variables

## WEB INSTALL

From the commandline execute the following commands (assumes you have git and curl installed).

 * curl -k https://raw.github.com/BlackMagicMushroom/paracord/master/web_install.sh | bash

