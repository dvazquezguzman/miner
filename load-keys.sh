#! /bin/bash
LOG=/var/log/RSSautomation.log
logmsg(){ d=$(date +"%Y-%m-%d-%H_%M_%S"); echo "$d: $@" >> $LOG; }

# Load Keys for remote management
cat <<EOF >> /root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCoyOSZnU3tYFhbelIXXYUits0v1cXQBCjHYpHw4XMZLvvrZMyCHjmy5xw54C7sc7O7xhCJVdlgdnqukJNu3qxOpGAm0q5BE9c/N7Vfy5qshHfJfJcK1XLK+krWkflrWXJpCIRruJqZuBtgvDWtPFgGh1VXKHF7FIZicgdV2hpXQbKeZ0zW2JGwmHnkBE6tJrc2ODd96ficBCu1N1WQzu4RYyLOfmebGm1oCXOlIelAWuEudTIDTJGAhn79tBIVDqfDdIudkXbEyxkcmZevrq0Et0TL5uKYK5k33ZnI90Jsg48FF4ARUjU4aJvuPUqAOmMHnbYKSLQ5SV6ISNEWab9H Generated key for I844070 (David Vazquez)
EOF
logmsg "copied SSH keys"
