# C:\Users\admin\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

Set-PSReadLineOption -Colors @{ Command = 'Red' } | Add-Content $Profile
Invoke-Expression (&starship init powershell)