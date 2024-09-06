# Custom Powershell File
# Author: Victor J. Torres Ferreyra

# Import Modules
# Import-Module posh-git
Import-Module -Name Terminal-Icons

# PSReadLine Customazed Setting
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -HistoryNoDuplicates:$True
Set-PSReadLineOption -HistorySavePath $env:USERPROFILE\$($env:COMPUTERNAME)_history.txt
Set-PSReadLineoption -HistorySaveStyle SaveIncrementally

# Alias
Set-Alias -Name ls -Value Get-ChildItem
Set-Alias -Name ll -Value Get-ChildItem -Force
Set-Alias -Name grep -Value Select-String
Set-Alias -Name g -Value git
Set-Alias -Name less -Value 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias -Name nano -Value 'C:\Program Files\Git\usr\bin\nano.exe'
Set-Alias -Name v -Value nvim

# Oh My Posh Invocation
oh-my-posh init pwsh --config $env:USERPROFILE\.config\ohmyposh\quetzal.omp.json | Invoke-Expression

# Customized Commands and Functions
function which {
    param (
        $command
    )
    Get-Command -Name $command -ErrorAction SilentlyContinue |
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function touch {
    param(
        $name
    )

    New-Item -Path . -Name $name -ItemType file
}
