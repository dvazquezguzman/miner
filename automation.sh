#! /bin/sh
LOG=/var/log/RSSautomation.log
logmsg(){ d=$(date +"%Y-%m-%d-%H_%M_%S"); echo "$d: $@" >> $LOG; }

logmsg "Starting automation"
sudo apt-get update
sudo apt-get install libcurl4-openssl-dev libjansson4 -y
logmsg "apt-get updated and installed"
pwd > automation.sh.txt
#  mkdir /home/dvazquezguzman/miner
#  cd /home/dvazquezguzman/miner
git clone https://github.com/dvazquezguzman/miner.git
logmsg "cloned git repo"
sudo /home/dvazquezguzman/miner/load-keys.sh
sudo /home/dvazquezguzman/miner/automation.rc.local.sh
/home/dvazquezguzman/miner/cpuminer -B
logmsg "All set."
