## Multi-booting

There are a number of ways one can create a bootloader for all your various operating systems. I suggest you try another method for yourself, one that differs from the following, to better suit your needs and taste.

--------------------------------------------------

#### Partitioning

> **WARNING**: If your BIOS Mode happens to be "Legacy", you will need a Master Boot Record (MBR) disk. This will seriously limit the multi-boot possibilities, has an MBR is limited to 4 physical partitions. If your BIOS Mode is "UEFI", no need to worry: 128 physical partitions can be created on a GUID Partition Table (GPT).

Verify BIOS Mode:
- <kbd>Win</kbd> + <kbd>R</kbd>;
- Run ```msinfo32```;
- System Summary &#8594; BIOS Mode.

Determine RAM:
- <kbd>Win</kbd> + <kbd>R</kbd>;
- Run ```msinfo32```;
- System Summary &#8594; Installed Physical Memory (RAM).

Prepare disk in use:
- <kbd>Win</kbd> + <kbd>R</kbd>;
- Run ```diskmgmt.msc```;
- Shrink the Windows OS partition if there's not enough free space available.
  - Recommended minimum free space: 500 MiB + 6 GiB + (16 GiB × number of operating systems to be installed).
  
Prepare new disk:
- <kbd>Win</kbd> + <kbd>R</kbd>;
- Run ```diskmgmt.msc```;
- Right click on unallocated disk;
- Click on "New Simple Volume...";
- Select size, path, and format options.

<div align="right">
    <b><a href="#">&#8613;</a></b>
</div>

--------------------------------------------------

#### Live booting

To try a Linux flavour, you will need to use a live CD or, in a less antiquated fashion, a USB drive.

<ul>
    <!--ISO-->
    <li>
        <details>
            <summary> ISOs: </summary>
            <p>
              
- [Arch][ISO01]

- [CentOS][ISO02]

- [Debian][ISO03]

- [Elementary][ISO04]

- [Endeavour][ISO05]

- [Fedora][ISO06]

- [Kali][ISO07]

- [Manjaro][ISO08]

- [Mint][ISO09]

- [MX][ISO10]

- [openSUSE][ISO11]

- [Pop!\_OS][ISO12]

- [Solus][ISO13]

- [Tails][ISO14]

- [Ubuntu][ISO15]

- [Zorin][ISO16]

- Others: [DistroWatch][ISO17]
            </p>
        </details>
    </li>
</ul>

Boot on USB drive:
- Install USB formatting utility:
  - [Rufus][1] (for Windows);
  - [Unetbootin][2] (for Windows / Mac OS / Linux).
- Using Rufus:
  - Select device (USB stick);
  - Select ISO image;
  - If available as option, select the partition scheme according to your disk's partition scheme;
  - If available as option, select the target system according to your BIOS mode;
  - All other options can be left to their default values;
  - Click "START", and wait for the process to end.
- Shutdown computer;
- Start computer and access boot menu / BIOS (usually with multiple presses of <kbd>Esc</kbd> or a long press of <kbd>F2</kbd>);
  - Disable "Secure Boot" if there is one. It might prevent you from running another OS.
- Boot the USB image.
    
<div align="right">
    <b><a href="#">&#8613;</a></b>
</div>

--------------------------------------------------

#### Installation

First install:
- Run a disk partitioning utility, like GParted, if available;
  - Create shared partitions:
    - BIOS (500 MiB, FAT32);
    - SWAP (6 GiB, linux-swap);
    - <distro> (16+ GiB, ext4);
  - Add names and labels according to your needs;
  - Apply changes.
- Run distro installer;
  - Mount BIOS partition at ```/boot/efi```, ```/boot```, or ```/efi``` depending on your Linux distribution;
  - Mount <distro> partition at ```/```.
  
> **WARNING**: After the first installation, avoid moving partitions around. Changing the order, the size or the start point can lead to instability.

Subsequent installs:
- Run distro installer;
  - Mount BIOS partition at ```/boot/efi```, ```/boot```, or ```/efi``` depending on your Linux distribution;
  - Create new partition <distro> for your distribution (16+ GiB, ext4);
  - Mount <distro> partition at ```/```.
    
<div align="right">
    <b><a href="#">&#8613;</a></b>
</div>

--------------------------------------------------

- Previous: [Linux][3]

- Next: [Boot Loader][4]

- Return: [Table of Contents][5]

    [//]: # (-- REFs ------------------------------------------)

    [1]: https://rufus.ie/              "Rufus"
    [2]: https://unetbootin.github.io/  "Unetbootin"
    [3]: ../LINUX.MD                    "Linux"
    [4]: ./BOOTLOADER.MD                "Boot Loader"
    [5]: ../README.MD#TOC               "Table of Contents"
    
    [//]: # (-- ISOs ------------------------------------------)
    
    [ISO01]: https://www.archlinux.org/download/     "Arch"
    [ISO02]: https://www.centos.org/download/        "CentOS"
    [ISO03]: https://www.debian.org/distrib/         "Debian"
    [ISO04]: https://elementary.io/                  "Elementary"
    [ISO05]: https://endeavouros.com/                "Endeavour"
    [ISO06]: https://getfedora.org/                  "Fedora"
    [ISO07]: https://www.kali.org/downloads/         "Kali"
    [ISO08]: https://manjaro.org/download/           "Manjaro"
    [ISO09]: https://www.linuxmint.com/download.php  "Mint"
    [ISO10]: https://mxlinux.org/download-links/     "MX"
    [ISO11]: https://www.opensuse.org/               "openSUSE"
    [ISO12]: https://pop.system76.com/               "Pop!_OS"
    [ISO13]: https://getsol.us/download/             "Solus"
    [ISO14]: https://tails.boum.org/install/         "Tails"
    [ISO15]: https://ubuntu.com/download/desktop     "Ubuntu"
    [ISO16]: https://zorinos.com/download/           "Zorin"
    [ISO17]: https://distrowatch.com/                "DistroWatch"
