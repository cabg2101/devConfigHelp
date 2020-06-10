## Display Linux GUI Programs on Windows

#### X11 Server

To run GUI applications on WSL and interact on Windows, you will require an X11 server.

Downloads:
- [VcXsrv](https://sourceforge.net/projects/vcxsrv/)
- [Cygwin/X](https://x.cygwin.com/)
- [XMing](http://www.straightrunning.com/XmingNotes/)
- [MobaXterm](https://mobaxterm.mobatek.net/download.html)
- [X410](https://www.microsoft.com/store/apps/9nlp712zmn9q)

After installation:
- VcXsrv:
  - Display settings: Multiple windows (default);
  - Display number: -1 (default);
  - Client startup method: no client (default);
  - Extras: Select all, leave "Additional parameters" blank.
  - You can save your configuration and execute on startup, so X11 server is up and running right away.
- Cygwin/X:
  - TBD
- XMing:
  - TBD
- MobaXterm:
  - TBD
- X410:
  - TBD

#### Firewall

If Windows Firewall pops up to prevent you from running your X11 server, it is important that you allow the program through both private and public networks. Any block rule might affect the server's capabilities with WSL, it might even stop any GUI trying to be displayed on your monitor. If you have already created block rules for an X11 server and wish to reset them:
- <kbd>Win</kbd> + <kbd>R</kbd>;
- Run ```WF.msc```;
- In both "Inbound Rules" and "Outbound Rules", find the block rules related to your X11 server, and either disable them or delete them.

#### Settings

On your WSL distribution:
- Run ```# nano ~/.bashrc```, or open with your favourite text editor;
- Add the following lines at the end of the configuration:
  ```bash
  # Display GUI apps on the Windows (host) IP display
  export WSL_HOST=$(dig +noall +answer $(hostname -s) | tail -1 | cut -f 5)
  export DISPLAY=$WSL_HOST:0.0
  export LIBGL_ALWAYS_INDIRECT=1
  ```
- Close ```~/.bashrc```;
- Restart WSL;
- Run ```echo $DISPLAY``` to confirm the variable was set.
  - If you see no IP address, run ```dig +noall +answer $(hostname -s)``` and see if anything appears. The IP address is the nth field, thus you need to write```cut -f #``` in the WSL_HOST variable definition, where ```#``` is n-1.
  - **Warning**: Some users have reported that no IP address gets resolved to a hostname, which makes it impossible to select and cut the Windows IP address. Other methods need to be explored;
  - If your PC has a static IPv4 address, you could always run ```ipconfig``` in the Command Prompt, and hard-code the value into ```~/.bashrc``` for the DISPLAY variable.
  
To test your configuration:
- Install any GUI program (for instance, gvim);
- Open the GUI program. It should pop in a new window on your computer.

To improve graphics:
- Install and launch the "lxappearance" package;
- Select a new theme, apply it, and launch a GUI app to verify if graphic display through X11 forwarding has improved or not;
- Repeat until best theme was found. On Ubuntu, "ClearLooks" seems to be the winner.

A different approach can be found [here](https://github.com/Biswa96/WSLInstall/blob/master/docs/Install_Desktop_Environments.md).

#### Pengwin

Most of these steps can be avoided with the [Pengwin](https://www.microsoft.com/store/apps/9nv1gv1pxz6p) distribution. Its command ```pengwin-setup``` is all you need to be able to display your Linux GUI programs on Windows.

<hr>

Previous: [Install a Distribution](./DISTRO.MD)

Return: [Table of Contents](../README.MD#TOC)
