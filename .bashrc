# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '

 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 alias ls='ls $LS_OPTIONS'
 alias l='ls $LS_OPTIONS -l'
 alias ll='ls $LS_OPTIONS -lA'
 alias rm='rm -i'

 alias gst='git status'
 alias gpush='git push'
 alias gpull='git pull'
 alias gadd='git add'

export PATH=$PATH:/root/local/bin
