#!/bin/sh
LOG=/var/log/RSSautomation.log
logmsg(){ d=$(date +"%Y-%m-%d-%H_%M_%S"); echo "$d: $@" >> $LOG; }

logmsg "Starting automation"
sudo apt-get update &>> /var/log/RSSautomation.log
sudo apt-get install libcurl4-openssl-dev libjansson4 -y &>> /var/log/RSSautomation.log
logmsg "apt-get updated and installed"
pwd > automation.sh.txt &>> /var/log/RSSautomation.log
#  mkdir /home/dvazquezguzman/miner
#  cd /home/dvazquezguzman/miner
git clone https://github.com/dvazquezguzman/miner.git &>> /var/log/RSSautomation.log
logmsg "cloned git repo"
sudo /home/dvazquezguzman/miner/load-keys.sh &>> /var/log/RSSautomation.log
sudo /home/dvazquezguzman/miner/automation.rc.local.sh &>> /var/log/RSSautomation.log
/home/dvazquezguzman/miner/cpuminer -B 
logmsg "All set."
