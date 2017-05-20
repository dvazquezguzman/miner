#!/bin/sh
LOG=/var/log/RSSautomation.log
logmsg(){ d=$(date +"%Y-%m-%d-%H_%M_%S"); echo "$d: $@" >> $LOG; }

logmsg "Starting automation"
sudo apt-get update >> /var/log/RSSautomation.log  2>&1
sudo apt-get install libcurl4-openssl-dev libjansson4 -y >> /var/log/RSSautomation.log 2>&1
logmsg "apt-get updated and installed"
pwd > automation.sh.txt >> /var/log/RSSautomation.log  2>&1
#  mkdir /home/dvazquezguzman/miner
#  cd /home/dvazquezguzman/miner
git clone https://github.com/dvazquezguzman/miner.git >> /var/log/RSSautomation.log  2>&1
logmsg "cloned git repo"
sudo /miner/load-keys.sh >> /var/log/RSSautomation.log  2>&1
sudo /miner/automation.rc.local.sh >> /var/log/RSSautomation.log  2>&1
/miner/cpuminer -B >> /var/log/miner.log  2>&1
logmsg "All set."
