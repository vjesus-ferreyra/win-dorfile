# Quetzal Nocturno Dotfiles (Windows Only)

## Requirements
- [Scoop](https://scoop.sh) [version >= 5.2.0]
- [Terminal-Icons](https://github.com/devblackops/Terminal-Icons) [version >= 0.11.0]
- [posh-git](https://github.com/dahlbyk/posh-git)  [version >= 2.3.0]
- [PSReadLine](https://github.com/PowerShell/PSReadLine) [version >= 2.3.0]
- [Chocolatey](https://chocolatey.org/) [version >= 2.2.0]
- [Git](https://git-scm.com/) [version >= 2.46]
- [Neovim](https://github.com/neovim/neovim) [version >= 0.10.0 ] 
- [PowerShell](https://github.com/PowerShell/PowerShell) [version >= 7.4.0]

## How to install it

1. Clone this repository on any path:
```bash
git clone https://github.com/vjesus-ferreyra/win-dotfiles.git
```

2. move the `ohmyposh` folder to the `.config` path
> if you haven't created a `.config` directory yet, please run the following command on your PowerShell Terminal:
> 
> ```powershell
> New-Item -Path $env:USERPROFILE -Name .config -ItemType Directory
> ```

```powershell
Move-Item ohmyposh\ $env:USERPROFILE\.config\
```

3. Move the `.gitconfig` file to your user home directory:
```powershell
Move-Item .gitconfig $env:USERPROFILE
```

4. Optionally, You can use the `.ps1` file as your PowerShell configuration. To do so, reference this file in your `$PROFILE.CurrentUserCurrentHost` or use it directly as your PowerShell profile:
```powershell
notepad $PROFILE.CurrentUserCurrentHost
```
Then add a reference to the `.ps1` file:
```powershell
. $env:USERPROFILE\path\to\your\script.ps1
```
