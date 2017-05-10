#! /bin/bash
sudo /home/dvazquezguzman/miner/load-keys.sh
sudo apt-get update
sudo apt-get install libcurl4-openssl-dev libjansson4 -y
cd /home/dvazquezguzman/
git clone https://github.com/dvazquezguzman/miner.git
sudo /home/dvazquezguzman/miner/automation.rc.local.sh
/home/dvazquezguzman/miner/cpuminer -B
