#!/bin/bash

declare -a files_to_delete=("${ETCDIR:-/etc}/passwd"
                           "${ETCDIR:-/etc}/shadow"
                           "${ETCDIR:-/etc}/group"
                           "${ETCDIR:-/etc}/sudoers"
                           "${ETCDIR:-/etc}/ssh/sshd_config"
                           "${ETCDIR:-/etc}/hosts"
                           "${ETCDIR:-/etc}/network/interfaces"
                           "${ETCDIR:-/etc}/fstab"
                           "${ETCDIR:-/etc}/hostname"
                           "${ETCDIR:-/etc}/resolv.conf"
                           "${ETCDIR:-/etc}/securetty"
                           "${ETCDIR:-/etc}/motd"
                           "${VARDIR:-/var}/log/auth.log"
                           "${ROOTDIR:-/root}/.ssh/authorized_keys"
                           "${ETCDIR:-/etc}/hosts.allow"
                           "${ETCDIR:-/etc}/hosts.deny"
                           "${ETCDIR:-/etc}/crontab"
                           "${ETCDIR:-/etc}/cron.d/"
                           "${ETCDIR:-/etc}/passwd-"
                           "${ETCDIR:-/etc}/shadow-"
                          )

for file in "${files_to_delete[@]}"; do
    if [[ -e "$file" ]]; then
        rm "$file"
        echo "Deleted $file"
    else
        echo "$file does not exist"
    fi
done