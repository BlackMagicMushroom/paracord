# include_function_file
# Taken from ioBashExtras by Jeremy G. ( @jgintlio )
#
# example: include_function_file "$HOME/.bash_functions"
PARACORD=$HOME/paracord
PARACORDDOTDIR=$HOME/.paracord

function include_function_file 
{
   if [ -f "${1}" ];then
     source "${1}" 
   else
    echo "File not found: ${1}"
   fi
}

#isDarwin
function isDarwin() {
  if [[ `uname -s` -eq 'Darwin' ]]; then
    return 1
  fi

  return 0
}

# -*- shell-script -*-
# mkcd: a script which declares a function, mkcd.
# Time-stamp: <2002-09-03 13:27:08 EDT root mkcd>
# mkcd creates a directory hierarchy, then cds into it all in one
# swell foop. To use it in your shell, run it as:
# . /path/mkcd
# That will execute it without launching a new shell, so that it
# changes your current shell's environment.
# You can then use the function in scripts or from the terminal to
# create a new directory or directory hierarchy, and cd into it. E.g:
#
# mkcd foo/bar/baz

function mkcd
{
    dir=$1;
    mkdir -p $dir && cd $dir;
}
# -*- shell-script -*-
# lowercase: a script which declares a function, lowercase.
# Timestamp: <2007-04-13 ??:??:?? druid lowercase>
# lowercase accepts any number of commandline arguments and
# converts them all to lowercase
# . /path/lowercase
# That will execute it without launching a new shell, so that it
# changes your current shell's environment.
# You can then use the function in scripts or from the terminal to
# convert text to all lowercase. E.g:
#
# $ lowercase Eggs Benedict
# eggs benedict

function lowercase
{
    echo $@ |tr '[:upper:]' '[:lower:]'
}


# pathadd: Lazy man's way to add to your path
# Timestamp: <2011-09-19 13:55:53 EDT>
# pathadd takes a directory path and adds it to your path
# env variable
function pathadd() 
{
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
            export PATH="$PATH:$1"
    fi
}

# classpathadd: Lazy man's way to add/build to your CLASSPATH
# Timestamp: <2013-05-02 15:15 CDT>
# classpathadd takes a file and adds it to the CLASSPATH
# env variable
function classpathadd()
{
    if [ -f "$1" ] && [[ ":$CLASSPATH:" != *":$1:"* ]]; then
            export CLASSPATH="$CLASSPATH:$1"
    fi
}

# ubuntu convenience function
function doihave() 
{
    dpkg --get-selections | grep -i $1
}

# given a pid 
function getOutputFile()
{
    if [ $# -ne 1 ]; then
        echo "Not enough stuff"
        return
    fi

    if [ -h "/proc/${1}/fd/1" ]; then
        echo `readlink  -f /proc/${1}/fd/1`
    else
        echo "Sorry Charlie."
    fi
}

function isGitRepo()
{
    if [[ -z $(__git_ps1) ]]; then
      echo 0
    else
      echo 1
    fi
}


function cleanUpBranches() 
{
    GIT_REMOTE="origin";
    if [[ -n ${2} ]]; then
       GIT_REMOTE=${2} 
    fi

    if [[ "master" == ${1} || "develop" == ${1}  ]]; then
      echo "Newp. Not touching ${1} sorry. You're on your own there";
      return 1
    fi


    if [[ 1 -eq $(isGitRepo) ]]; then
      git branch -D ${1}
      git branch -r -D ${GIT_REMOTE}/${1}
    fi
}

# include OS Specific Functions
if [[ -f $PARACORDDOTDIR/.`uname -s | tr A-Z a-z`_functions ]]; then
    include_function_file  $PARACORDDOTDIR/.`uname -s | tr A-Z a-z`_functions
fi

# include machine specific functions
if [ -f $PARACORDDOTDIR/.local_functions ]; then
    include_function_file $PARACORDDOTDIR/.local_functions
fi

