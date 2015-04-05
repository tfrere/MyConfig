# Basics

 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"

 alias ls   = 'ls $LS_OPTIONS'
 alias l    = 'ls $LS_OPTIONS -l'
 alias ll   = 'ls $LS_OPTIONS -lA'
 alias rm   = 'rm -i'

# Git 

 alias gstatus = 'git status'
 alias gadd    = 'git add -A'
 alias gpush   = 'git push'
 alias gcommit = 'git commit -m'

# BashLib

 # Detection

  alias ownip        = 'sh .detection/ownip.sh'
  alias whichkernel  = 'sh .bash_lib/kernel.sh'
  alias whichdistrib = 'sh .bash_lib/distrib.sh'
  alias grouplist    = 'sh .bash_lib/groupl.sh'
  alias publicip     = 'sh .bash_lib/publicip.sh'
  alias whicharchi   = 'sh .bash_lib/whicharchi.sh'
  alias biggestfiles = 'sh .bash_lib/biggestfiles.sh'


export PATH=$PATH:/root/local/bin
