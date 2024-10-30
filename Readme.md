# DotFiles

- I am using windows with WSL
- For code I use Neovim with WSL.

## My VScode Vim

if you are copying entire settings.json; make sure you have these extensions installed.

1. Vim
2. Tabler Product Icons
3. Catppuccin theme
4. Symbols

copy my `settings.json` and `keybinds.json` to your vscode; and you are set 📫

### 1. Navigation

[N] - Normal Mode, [V] - Visual Mode, [I] - Insert Mode

- `ctrl + h/l/k/j` » [N] navigate left/right/up/down (I mostly used when using splits or when explorer is open)
- `space e` » [N] toggle file explorer
- `tab` » [N] switch to next tab
- `shift + tab` » [N] switch to previous tab
- `shift + j/k` » [V] move line up/down
- `shift + k` » [N] showHover
- `space + c + a` » [N] code action
- `space + c + r` » [N] rename
- `space + c + s` » [N] go to symbol
- `space + b + d` » [N] close active buffer
- `space + b + o` » [N] close all other buffers
- `space + space` » [N] quick Open
- `space + g + d` » [N] reveal definition
- `ctrl + m` » [N] toggle Fold
- `space + g + r` » [N] go to references
- `space + f + f` » [N] find in files
- `space + g + g` » [N] git
- `ctrl + n` » [N] add selection to next find match

- `j + j` » [I] remap to `esc`

### 2. Explorer (when in focus)

- `r` » rename file
- `c` » copy file
- `p` » paste file
- `d` » delete file
- `x` » cut file
- `a` » new file
- `shift + a` » new folder
- `s` » open to side(vsplit)
- `shift + s` » open to down(hsplit)

I use system clipboard to copy and paste.
I disabled ctrl keys for vim; so i can use vscode keybinding for ctrl

## How to setup neovim with my Nvim config

### Requirements

- Neovim >= **0.9.0** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- a [Nerd Font](https://www.nerdfonts.com/)
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

# run neovim
nvim
```
