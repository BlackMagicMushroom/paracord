# PARACORD

Paracord dot files framework. Simply fork paracord drop your dot files into the
 appropriate directory and you are locked and loaded.  
  
Original source: https://github.com/BlackMagicMushroom/paracord 

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
 
 * configure      - Updates your web\_install.sh file in your repo & configure your ~/.gitconfig with your info
 * help           - Displays help dialog
 * install        - Installs your instance of Paracord
 * update         - Updates from your repo then executes appropritate commands
 * update-path    - Updates your .local\_env file to include the paracord command to your path
 * variables      - Displays Paracord variables

## .FILES STRUCTURE

The way these .files (dot files) are structured follow the simple idea of generic environment elements
that can exist across multiple systems all exist in the appropriate .bash\_{X} files (e.g. .bash\_env, 
.bash\_aliases, et cetra). System specific .files should live in .local\_{X} files (e.g. .local\_env,
.local\_aliases, et cetra). 

## WEB INSTALL

From the commandline execute the following commands (assumes you have git and curl installed).

 * curl -k https://raw.github.com/druid628/paracord/master/web_install.sh | bash

