# Font Installer Tool

The 'install.ps1' PowerShell script was inspired from ['Automate Everything!' blog post](https://eggermontbert.wordpress.com/2021/09/17/installing-fonts-font-families-using-powershell/?utm_source=pocket_mylist).


## Trouble Shooting
Use a PowerShell script to inspect the fonts that are registered on the Windows target machine.
``` shell
Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts'
```
This command will list out all the registered fonts and their corresponding file names.  

Alternative command
``` shell
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /s
```

## Included fonts 
The fonts found in the fonts directory are Open Source fonts grabbed from the internet.
