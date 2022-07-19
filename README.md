dotfiles
========

Configs and instructions for smooth life

Structure
---------
```
	win/	
		-> caps.ahk - Script for changing languages by Caps-lock
		-> packages.ps1 - Chocolatey software
		-> ssh.txt - ssh configuration instructions
	linux/
		-> .bashrc - you know what it is
		-> ssh.sh  - ssh configuration instructions

	# OpenMediaVault server -> docker/portainer stacks

	omv/
		->	downloader.yml - Direct/torrent download server stack
		->	hass.yml - HomeAssistant stack
		->	theeye.yml - Network inspection tool stack
		->	cybersec.yml - Learn cyber sec
```


OMV config instructions:
------------------------

Move images to better place
```
sudo systemctl stop docker
sudo cp -r /var/lib/docker /srv/dev-disk-by-uuid-dc414ea1-c74d-4893-98b3-ffb607641d12/docker
sudo rm -r /var/lib/docker
sudo ln -s /srv/dev-disk-by-uuid-dc414ea1-c74d-4893-98b3-ffb607641d12/docker /var/lib/docker
sudo systemctl start docker
```