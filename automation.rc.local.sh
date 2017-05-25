#! /bin/bash
LOG=/var/log/RSSautomation.log
logmsg(){ d=$(date +"%Y-%m-%d-%H_%M_%S"); echo "$d: $@" >> $LOG; }
echo "" > /etc/rc.local
cat <<EOF > /etc/rc.local
#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.

# cd /home/dvazquezguzman/miner
touch automation.rc.local.sh.txt
git pull https://github.com/dvazquezguzman/miner.git
/miner/cpuminerGCE.sh

exit 0
EOF
logmsg "Updated rc.local script"
