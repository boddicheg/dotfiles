Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install llvm
choco install googlechrome
choco install chocolatey-core.extension
choco install vcredist140
choco install 7zip.install
choco install python3
choco install git.install
choco install cutepdf
choco install openssh
choco install autohotkey.portable
choco install ccleaner
choco install teamviewer
choco install vscode
choco install filezilla
choco install microsoft-windows-terminal
choco install firefoxesr
choco install wireshark
choco install virtualbox
choco install telegram.install

choco install advanced-ip-scanner
choco install rufus
choco install calibre
choco install nmap
choco install mobaxterm