Linux dotfiles
===

Packages
```bash
sudo apt install omz
```


SSH
--
Manual mode

```bash
#/bin/sh
ssh-keygen -t rsa -b 4096 -C "$1"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
```