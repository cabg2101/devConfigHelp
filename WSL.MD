## Windows Subsystem for Linux (WSL)

More information can be found [here](https://aka.ms/wsl).

This component is not usually activated on Windows. You will need to activate it yourself.

- Control Panel:
  - <kbd>Win</kbd> + <kbd>R</kbd>;
  - Run ```appwiz.cpl```;
  - Click on "Turn Windows features on or off"
  - Select "Virtual Machine Platform" and "Windows Subsystem for Linux";
  - Click "Ok" and restart your computer when prompted.
- PowerShell (Admin):
  - Run ```dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart```;
  - Run ```dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart```.
  - Restart your computer.
  
<hr>

#### Examples

- Profile:
  - [~/.bashrc](./WSL/PROFILE/.bashrc)
  - [~/.bash_aliases](./WSL/PROFILE/.bash_aliases)
  - [~/.bash_functions](./WSL/PROFILE/.bash_functions)
  - [~/.bash_logout](./WSL/PROFILE/.bash_logout)
  - [~/.bash_vars](./WSL/PROFILE/.bash_vars)

<hr>
  
Next: [Upgrade to WSL2](./WSL/UPGRADE.MD)

Return: [Table of Contents](./README.MD#TOC)
