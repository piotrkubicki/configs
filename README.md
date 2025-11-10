# Configs
A set of configuration files for various applications.

## Applications Covered
- Neovim
- WezTerm

## Installation
### WezTerm
- Install WezTerm by following the instructions on the [official WezTerm website](https://wezfurlong.org/wezterm/).
- Install dependecies:
    - zoxide

### Neovim
1. Install Neovim by following the instructions on the [official Neovim website](https://neovim.io/).

### Configuration Setup
To use there confiuguration files, clone the repository and create symbolic links to the appropriate locations in your home directory.

```bash
# WezTerm
ln -s /<repository>/<location>/<repo-name>/wezterm/.wezterm.lua /home/<user>/.wezterm.lua 

# Neovim
ln -s /<repository>/<location>/<repo-name>/nvim /home/<user>/.config/nvim
```
