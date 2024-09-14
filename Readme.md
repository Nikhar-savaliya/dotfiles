# 💠 DotFiles

🎴 _Just to know,_

- I am using windows with WSL
- For code, I use VSCode with vim keybindings
- Config files for Obsidian, Alacritty, tmux, neovim, VSCode, etc.

# How to setup neovim with my Nvim config

### ⚡️ Requirements

- Neovim >= **0.9.0** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- a [Nerd Font](https://www.nerdfonts.com/) **_(optional)_**
- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)

### FOLLOW THIS STEPS

1. Clone this repository
2. use this command

```bash
# cd into cloned repository
cd dotfiles

# backup your cofig (if you have one)
mv ~/.config/nvim{,.bak}

# copy my nvim config files
cp ./nvim -r ~/.config/nvim
```
