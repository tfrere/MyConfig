#List Daemon and zombie process

# ps axo pid,ppid,pgrp,tty,tpgid,sess,comm |awk '$2 == 1' |awk '$1 == $3'
# ps -ef | awk '$3 == 1'

# Group List
# cut -d: -f1 /etc/group
