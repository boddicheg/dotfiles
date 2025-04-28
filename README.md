dotfiles
========




Git Aliases(`.gitconfig`)

```bash
[alias]
  st = status
  lg = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative

  undo = reset HEAD~1 --mixed
  amend = commit -a --amend
  logtree = log --graph --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(bold white)— %an%C(reset)' --abbrev-commit
  hist = log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short
[user]
	name = <username>
	email = <useremail>
```