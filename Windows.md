
Windows Dotfiles
---


Install Chocolatey
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Packages
```
choco install chocolatey-core.extension
choco install vcredist140
choco install 7zip.install
choco install python3
choco install git.install
choco install cutepdf
choco install openssh
choco install autohotkey.portable
choco install vscode
choco install firefoxesr
choco install telegram.install

choco install 1password
choco install joplin
```

caps.ahk
--
```
CapsLock::Send, {Alt Down}{Shift Down}{Shift Up}{Alt Up}
```

Put it in `$USER\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`

SSH
---
Manual mode
```powershell
ssh-keygen -t rsa -b 4096 -C "<EMAIL>"
Get-Service -Name ssh-agent | Set-Service -StartupType Manual
Start-Service ssh-agent
cat $USER.ssh/id_rsa.pub
ssh git@github.com
```
