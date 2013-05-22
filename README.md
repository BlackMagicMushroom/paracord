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

 * pc\_functions - This file houses execution functions used by paracord.
 * pc\_signature - This file is a logo displayed at execution

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
 
 * configure    - Updates your web\_install.sh file in your repo
 * help         - Displays help dialog
 * install      - Installs your instance of Paracord
 * update       - Updates from your repo then executes appropritate commands
 * update-path  - Updates your .bash\_env file to include the paracord command to your path
 * variables    - Displays Paracord variables

## WEB INSTALL

## TODO

 * Review messages
 * uncomment out actions
 * final test
