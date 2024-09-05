# Quetzal Nocturno Dotfiles (Windows Only)

## Requirements
- [Scoop](https://scoop.sh)
- [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
- [posh-git](https://github.com/dahlbyk/posh-git)
- [PSReadLine](https://github.com/PowerShell/PSReadLine)
- [Chocolatey](https://chocolatey.org/)
- [Git](https://git-scm.com/)
- [Neovim](https://github.com/neovim/neovim)
- [PowerShell](https://github.com/PowerShell/PowerShell)

## How install it

1. Clone this repository on any path:
```bash
git clone https://github.com/vjesus-ferreyra/win-dotfiles.git
```

2. move the `ohmyposh\` folder to the `.config\` path
> if you haven't create a `.config\` file, please follow this command on your powershell:
> 
> ```powershell
> New-Item -Path $env:USERPROFILE -Name .config -ItemType Directory
> ```

```powershell
Move-Item ohmyposh\ $env:USERPROFILE\.config\
```

3. Put the `.gitconfig` file on your user home path:
```powershell
Move-Item .gitconfig $env:USERPROFILE
```
