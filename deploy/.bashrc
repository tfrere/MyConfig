# Basics

 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"

 alias ls   = 'ls $LS_OPTIONS'
 alias l    = 'ls $LS_OPTIONS -l'
 alias ll   = 'ls $LS_OPTIONS -lA'
 alias rm   = 'rm -i'

# Git 

 alias gs = 'git status'
 alias ga = 'git add -A'
 alias gp = 'git push'
 alias gc = 'git commit -m'
 alias gg = 'git log --decorate --oneline --all --graph'

# BashLib

  alias ownip        = 'sh .bash_lib/ownip.sh'
  alias whichkernel  = 'sh .bash_lib/kernel.sh'
  alias whichdistrib = 'sh .bash_lib/distrib.sh'
  alias grouplist    = 'sh .bash_lib/groupl.sh'
  alias publicip     = 'sh .bash_lib/publicip.sh'
  alias whicharchi   = 'sh .bash_lib/whicharchi.sh'
  alias biggestfiles = 'sh .bash_lib/biggestfiles.sh'


