## Upgrade to WSL2

More information can be found [here](https://aka.ms/wsl2kernel).

To proceed any further, you must be sure that you are running Windows 10, updated to version 2004, Build 19041 or higher:
- <kbd>Win</kbd> + <kbd>R</kbd>;
- Run ```winver```;

If you need to upgrade:
- <kbd>Win</kbd> &#8594; Check for Updates;
- Alternatively, if you don't see the latest build being suggested, you can push the upgrade manually via the [Update Assitant](https://www.microsoft.com/en-ca/software-download/windows10).

[//]: # (------------------------------------------------)

To upgrade the Linux kernel:
- Download and install WSL2 kernel upgrade package [here](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi);
- Open PowerShell and run ```wsl --set-default-version 2```.

Any new distribution should use the new kernel by default.

To upgrade a previously installed distribution to the new kernel:
- Open PowerShell;
- Run ```wsl --list --verbose```;
- Identify the distribution you wish to upgrade, and run ```wsl --set-version <distroName> 2```;
- Update your default version for future distros with ```wsl --set-default-version 2```.

<hr>

Next: [Install a Distribution](./DISTRO.MD)

Previous: [Windows Subsystem for Linux (WSL)](../WSL.MD)

Return: [Table of Contents](../README.MD#TOC)
