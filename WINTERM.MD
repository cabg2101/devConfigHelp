## Windows Terminal

Download: [here](https://www.microsoft.com/store/apps/9n0dx20hk701).

You can open the terminal via the command ```wt``` or ```wt.exe``` on Command Prompt or Powershell.
If you want to play with your Windows Terminal configuration, you might want to save the program folder in a user variable. It'll be easier to access, add or remove files as you need.

- Find the folder at ```%localappdata%\Packages\Microsoft.WindowsTerminal_<random_string>```;
- Command Prompt:
  - Open Command Prompt;
  - Run ```setx <varname> <directory>```.
- Control Panel:
  - <kbd>Win</kbd> + <kbd>R</kbd>;
  - Run ```rundll32 sysdm.cpl,EditEnvironmentVariables```;
  - Click on "New...", add a variable name, and paste the directory.
- Registry (!):
  - <kbd>Win</kbd> ;
  - Type ```regedit``` and click <kbd>Enter</kbd>;
  - Go to ```Computer\HKEY_CURRENT_USER\Environment```;
  - Right click &#8594; New &#8594; String value;
  - Double click on the new string value to change its name and directory.
  
In any case, you will need to restart your computer to use your environment variable.

<hr>

#### Examples

- Configuration:
  - [%localappdata%\Packages\Microsoft.WindowsTerminal_<random_string>\LocalState\settings.json](./WINTERM/settings.json)

<hr>

Next: [Add a Profile](./WINTERM/PROFILE.MD)

Return: [Table of Contents](./README.MD#TOC)
