#! /bin/bash
sudo echo "" > /etc/rc.local
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

cd /home/dvazquezguzman/miner/
git clone https://github.com/dvazquezguzman/miner.git
/home/dvazquezguzman/miner/cpuminer -B

exit 0
EOF
