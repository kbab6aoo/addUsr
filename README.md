# Creating a local user using powershell

## OS: Windows

###### Requires: Powershell 4.0

-	The following is code to create a local user account and add them to a local group.
-	Also included is code to remove that account.
-	This is broken down into individual functions because its good practice to keep code modular regardless of the language.
-	Also added is a switch for `-install` and `-uninstall` so you would call the script `.\addUser.ps1 -install` or `.\addUser.ps1 -uninstall`.