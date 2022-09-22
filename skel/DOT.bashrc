# Included in Paracord compliments of Micah Breedlove ( @druid628 )
#
# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [ -f ~/.bash_env ] ; then
        source ~/.bash_env
fi

# Removed as it will be added by ENV
# if [ -f ~/.bash_functions ] ; then
#         source ~/.bash_functions
# fi

if [[ -f ~/.colors ]]; then    
        source ~/.colors           
fi

if [ -f /etc/bash.bashrc ] ; then
        source /etc/bash.bashrc
fi

# Host Specific configs for roaming home directories
# This is supercedes the purpose for .local_*  it is 
# for users to commit specific functionality for 
# managing machines with that specific name
# -DruiD628
LHN=`hostname -s |tr '[:upper:]' '[:lower:]'`
if [ -f ~/.bash_$LHN ]; then
        echo "Importing Host ($LHN) Specific Variables"
        source ~/.bash_$LHN
fi
