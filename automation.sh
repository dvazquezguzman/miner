#! /bin/bash
sudo apt-get update
sudo apt-get install libcurl4-openssl-dev libjansson4 -y
sudo touch /var/log/automation.apt-get
cd /home/dvazquezguzman/
git clone https://github.com/dvazquezguzman/miner.git
sudo touch /var/log/automation.git-clone
sudo /home/dvazquezguzman/miner/load-keys.sh
sudo touch /var/log/automation.loadkeys
sudo /home/dvazquezguzman/miner/automation.rc.local.sh
sudo touch /var/log/automation.load-rc.local
/home/dvazquezguzman/cpuminer -B
