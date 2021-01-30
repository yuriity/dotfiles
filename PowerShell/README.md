# Customizing PowerShell Prompt

## Prerequisites

Before installing posh-git make sure the following prerequisites have been met.

1. Windows PowerShell 5.x or PowerShell Core 6.0. You can get PowerShell Core 6.0 for Windows, Linux or macOS from [here](https://github.com/PowerShell/PowerShell#get-powershell). Check your PowerShell version by executing `$PSVersionTable.PSVersion`.
2. On Windows, script execution policy must be set to either **RemoteSigned** or **Unrestricted**. Check the script execution policy setting by executing `Get-ExecutionPolicy`. If the policy is not set to one of the two required values, run PowerShell as Administrator and execute `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`
3. Git must be installed and available via the PATH environment variable. Check that git is accessible from PowerShell by executing `git --version` from PowerShell. If git is not recognized as the name of a command, verify that you have Git installed. If not, install Git from [https://git-scm.com](https://git-scm.com/). If you have Git installed, make sure the path to git is in your PATH environment variable.
4. Powerline fonts - https://nerdfonts.com/, [Cascadia Code](https://github.com/microsoft/cascadia-code/releases)

## Installing posh-git via PowerShellGet

[posh-git](https://github.com/dahlbyk/posh-git) is available on the [PowerShell Gallery](https://www.powershellgallery.com/packages/posh-git/1.0.0-beta2) and can be installed using the PowerShellGet module.

```bash
# (A) You've never installed posh-git from the PowerShell Gallery
#
# NOTE: If asked to trust packages from the PowerShell Gallery, answer yes to continue installation of posh-git
# NOTE: If the AllowPrerelease parameter is not recognized, update your version of PowerShellGet to >= 1.6 e.g.
#       Install-Module PowerShellGet -Scope CurrentUser -Force -AllowClobber

$ PowerShellGet\Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force
```

## Using posh-git

Open **C:\Users\{CurrentUser}\Documents\{WindowsPowerShell | PowerShell}\Microsoft.PowerShell_profile.ps1** file and replace it content.

## Customization

Here described how to customize the posh-git prompt - [Customizing Your PowerShell Prompt](https://github.com/dahlbyk/posh-git/wiki/Customizing-Your-PowerShell-Prompt)
To get the complete list of settings that can be configured use:

```bash
$GitPromptSettings
```
