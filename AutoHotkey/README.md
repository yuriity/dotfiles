# Remap `↑` `←` `↓` `→`  keys to `i` `j` `k` `l` and make use of `CapsLock`

| Shortcut                         | Output                           |
| -------------------------------- | -------------------------------- |
| CapsLock + { i, j, k, l }        | { Up, Left, Down, Right }        |
| CapsLock + { u, o }              | { Home, End }                    |
| CapsLock + { y, h }              | { PageUp, PageDown }             |

Use ALT key to simulate CTRL, for example:

| Shortcut                         | Output                           |
| -------------------------------- | -------------------------------- |
| CapsLock + ALT + { l }           | { Ctrl } + { Right }             |
| CapsLock + SHIFT + ALT + { l }   | { Shift } + { Ctrl } + { Right } |

## How to

First of all, to make this magic working it needs to install **AutoHotkey** application from [autohotkey.com](https://www.autohotkey.com/).

To make this script start automatically follow this

1. Find the script file, select it, and press `Ctrl + C`.
2. Start **Run** (`Win + R`) and write `shell:startup`.
3. Right click and choose `Paste Shortcut`. The shortcut to the script should now be in the Startup folder.

## Synaptics stole Alt+Shft+L

In case Synaptics touchpad driver stole `Alt + Shft + L` shortcut

1. Open a command prompt with administrator privileges
2. Type the following as a single line into the command prompt window and press `Enter`:
  `reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\SynTP\Parameters\Debug /v DumpKernel /d 00000000 /t REG_DWORD /f`
3. Reboot the computer
