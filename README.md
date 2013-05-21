# PARACORD

Paracord dot files framework. Simply fork paracord drop your dot files into the
 appropriate directory and you are locked and loaded.

## DIRECTORIES

 * bin/
 * CORE/
 * skel/
 * skel.cp/


### bin
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
 
 * install - installs your instance of paracord
 * update  - updates from your repo then executes appropritate commands

## TODO

 * git remote url -- ?
 * $HOME/bin dir -- gotta treat it special
 * Add default template files
