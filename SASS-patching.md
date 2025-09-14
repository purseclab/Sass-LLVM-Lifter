# SASS binary mini-patching

https://github.com/WerWolv/ImHex


use `uname -a` to check Linux version

https://github.com/winfsp/sshfs-win

In general, you just enter `winget install SSHFS-Win.SSHFS-Win` in the terminal. The publisher is Navimatics with maintainer being `Bill Zissimopoulos <billziss at navimatics.com>`



First, on the windows machine, create ssh key pair with ssh-keygen. make sure the generated file (private and public key) is in the .ssh folder of the user.
Then, copy the public key to the linux machine's authorized-keys file.
Next, add the following line in the ssh config file:
```
Host pursec
    HostName 10.164.9.88
    User louis
    ProxyJump data
    IdentityFile ~/.ssh/pursec
```
Make sure Notepad is set in LF mode

Test `ssh pursec` in terminal to see if it works.

Restart the computer if necessary.

Then, do `net use Z: \\sshfs.k\pursec` in terminal. we can mount ~/louis by doing `net use Z: \\sshfs.k\pursec\louis`



## Patch notes

First, use `cuobjdump -sass executable`.

Then, use ImHex to search for the hex pattern of the SASS code. note that we might need to search in little-endian format, i.e. invert the byte order for multi-byte sequences.

Observations so far:
- register numbers can be found in the instruction hex code, e.g. R23 would be 17

