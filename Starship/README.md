

## Windows

### Step 2. Set up your shell to use Starship

PowerShell

Ensure PowerShell is installed: https://github.com/PowerShell/PowerShell/releases. By default used "%SystemRoot%\\System32\\WindowsPowerShell\\v1.0\\powershell.exe".

Add the following to the end of your PowerShell configuration (find it by running `$PROFILE`):

```bash
Invoke-Expression (&starship init powershell)
```

### Configuration

To get started configuring starship, create the following file: ~/.config/starship.toml.

```bash
mkdir -p ~/.config && touch ~/.config/starship.toml
```

All configuration for starship is done in this TOML file:

```bash
# Get editor completions based on the config schema
"$schema" = 'https://starship.rs/config-schema.json'

# Inserts a blank line between shell prompts
add_newline = true

# Replace the '❯' symbol in the prompt with '➜'
[character] # The name of the module we are configuring is 'character'
success_symbol = '[➜](bold green)' # The 'success_symbol' segment is being set to '➜' with the color 'bold green'

# Disable the package module, hiding it from the prompt completely
[package]
disabled = true
```

You can change default configuration file location with STARSHIP_CONFIG environment variable:

```bash
[Environment]::SetEnvironmentVariable("STARSHIP_CONFIG", "$env:USERPROFILE\.config\Starship\starship.toml", "User")
```

Equivalently in PowerShell (Windows) would be adding this line to your $PROFILE:

```bash
# PowerShell config
$ENV:STARSHIP_CONFIG = "$env:USERPROFILE\.config\Starship\starship.toml"
```
