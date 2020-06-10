## GRUB

--------------------------------------------------

#### Installation & Maintenance

Installing:
- ```# <package_manager> <install_command> grub```;
- ```# grub-install --target=<architecture> --efi-directory=<efi_directory> --bootloader-id=<boot_name>```.

Updating:
- ```# update-grub```.

Restoring the bootloader:
- ```# grub-mkconfig -o /boot/grub/grub.cfg```, if necessary;
- ```# grub-install --recheck /dev/sd@```, where ```@``` is the disk letter the Linux distribution is installed on.

<div align="right">
    <b><a href="#">&#8613;</a></b>
</div>

--------------------------------------------------

#### Customization

Custom grub settings:
- ```# <text_editor> /etc/default/grub```;
- Add settings (for example: ```GRUB_BACKGROUND="<path_to_image>.<img>```).

Custom menuentries:
- ```# <text_editor> /etc/grub.d/40_custom```;
- Add a menuentry based on ```10_linux``` or ```30_os-prober```.

<div align="right">
    <b><a href="#">&#8613;</a></b>
</div>

--------------------------------------------------

- Previous: [Boot Loader][1]

- Next: [Boot Screen][2]

- Return: [Table of Contents][3]

    [//]: # (-- REFs ------------------------------------------)

    [1]: ../BOOTLOADER.MD     "Boot Loader"
    [2]: ../BOOTSCREEN.MD     "Boot Screen"
    [3]: ../../README.MD#TOC  "Table of Contents"
