# SASS Binary Mini-Patching Guide

This guide provides instructions for patching SASS binaries and mounting remote filesystems for development purposes.

## Tools

- [ImHex](https://github.com/WerWolv/ImHex): Hex editor for reverse engineering.
- [SSHFS-Win](https://github.com/winfsp/sshfs-win): SSHFS for Windows.

## Checking Linux Version

To check your Linux version, run:

```sh
uname -a
```

## Installing SSHFS-Win

Install SSHFS-Win via Windows Terminal:

```sh
winget install SSHFS-Win.SSHFS-Win
```

- **Publisher:** Navimatics
- **Maintainer:** Bill Zissimopoulos `<billziss at navimatics.com>`

## Setting Up SSH Keys

1. **On Windows:**  
    Generate an SSH key pair:

    ```sh
    ssh-keygen
    ```

    Ensure the private and public keys are in your user's `.ssh` folder.

2. **On Linux:**  
    Copy the public key to the `authorized_keys` file:

    ```sh
    ssh-copy-id user@remote-host
    ```

3. **SSH Config Example:**  
    Add to your SSH config (`~/.ssh/config`):

    ```
    Host myremote
         HostName <remote-host-address>
         User <your-username>
         ProxyJump <proxy-host>
         IdentityFile ~/.ssh/<key-file>
    ```

4. Ensure Notepad or your editor uses LF line endings.

5. Test the connection:

    ```sh
    ssh myremote
    ```

6. Restart your computer if necessary.

## Mounting Remote Filesystem

To mount your home directory:

```sh
net use Z: \\sshfs.k\<host>\<username>
```

Or, to mount the root:

```sh
net use Z: \\sshfs.k\<host>
```

## SASS Patching Workflow

1. **Disassemble the Executable:**

    ```sh
    cuobjdump -sass <executable>
    ```

2. **Search for SASS Code in ImHex:**
    - Use ImHex to locate the hex pattern of the SASS code.
    - For multi-byte sequences, search in little-endian format (invert byte order if needed).

### Notes

- Register numbers are encoded in the instruction hex. For example, register `R23` is represented as `17` in hex.

