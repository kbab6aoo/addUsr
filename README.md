Creating a local user using powershell

OS: Windows

Requires: Powershell 4.0

The following is code to create a local user account and add them to a local group. I also include code to remove that account. I broke all this down into individual functions because it is good practice to keep your code modular regardless of the language. I also added a switch for -install and -uninstall so you would call the script .\addUser.ps1 -install or .\addUser.ps1 -uninstall.