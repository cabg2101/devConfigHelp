## Add a Profile

More information can be found [here](https://aka.ms/terminal-documentation).

To find your settings:
- <kbd>Win</kbd> &#8594; ```%WindowsTerminalUserVariable%\LocalState\settings.json```;
- Open with your favourite text editor.

If you want to add a profile that wasn't generated automatically by Windows Terminal (Command Prompt, Powershell, WSL), you will need to generate a new Global Unique Identifier (GUID). To do so:
- Open PowerShell;
- Run ```new-guid```;
- Copy the output to the ```"guid"``` field of your profile in the JSON configuration.

Useful parameters:
- ```"backgroundImage"```: you can use ```ms-appdata:///``` instead of your environment variable to link an image file in your Windows Terminal folder;
- ```"backgroundImageAlignment"```: stick your image to a tab corner (```"bottomLeft"```, ```"TopRight"```, etc.);
- ```"backgroundImageOpacity"```: sets the transparency of your image. Useful for text output to stay visible over the image;
- ```"backgroundImageStrechMode"```: allows you to fill the tab with your background image in various ways (```"none"```, ```"uniformFill"```, etc.;
- ```"hidden"```: Hides the profile (useful when you want to copy your configuration on multiple PCs that don't always have all programs installed);
- ```"historySize"```: Limits the terminal output to the number of lines specified;
- ```"icon"```: Sets the tab icon of your profile;
- ```"source"```: similar to the ```"commandLine"``` parameter. It acts as a shortcut command for Windows Terminal to open Microsoft apps;
- ```"startingDirectory"```: Useful to start a WSL distribution in your home directory, for instance;
- ```"suppressApplicationTitle"```: Set to true, the field ```"name"``` will always be displayed as the tab title.

You can find more parameters in the default settings:
- Open Windows Terminal;
- In the drop menu, click on ```Settings``` while pressing the <kbd>Alt</kbd> key.

<hr>

Previous: [Windows Terminal](../WINTERM.MD)

Return: [Table of Contents](../README.MD#TOC)
