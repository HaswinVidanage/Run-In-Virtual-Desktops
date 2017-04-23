# Run In Virtual Desktops

The project uses PowerShell to open multiple virtual desktops on windows 10 and allows user to run individual programs on each virtual desktop automatically.

Purpose of this project was to open multiple virtual desktops in startup with specific programs running on each virtual desktop respectively.

## Installation

Edit the VirtualDesks.ps1 and replace Start-Process -FilePath "<location of the program you need to execute>".

```
For example Start-Process -FilePath "C:\Program Files\Git\git-bash.exe" runs gitbash on my first virtual desktop.
```
Then simply run VirtualDesks.ps1 with power shell

## Usage

You can make the PowerShell script run by simply double clicking on VirtualDesks.ps1 by changing a Registry Key :3

Refer to [Edit Registry Key to Open PowerShell on Double click](http://stackoverflow.com/a/20623597)

then you can create a shortcut and place it in your startup folder.

## Acknowledgments

* Hat tip to Shaun Webb on Stackoverflow.
[Starting programs on multiple desktops in powershell in windows 10](http://stackoverflow.com/a/33271721)

## License

This project is licensed under the MIT License  
