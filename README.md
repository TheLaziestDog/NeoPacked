<h1 align="center">📦 NeoPacked</h1>
<div align="center"><p>
    <a href="https://github.com/TheLaziestDog/NvBased/pulse">
      <img src="https://img.shields.io/github/last-commit/TheLaziestDog/NvBased?color=%4dc71f&label=Last%20Commit&logo=github&style=flat-square"/>
    </a>
    <a href="https://neovim.io/">
      <img src="https://img.shields.io/badge/Neovim-0.7+-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=white"/>
    </a>
      <a href="https://github.com/TheLaziestDog/NeoPacked/issues">
      <img src=https://img.shields.io/github/issues/TheLaziestDog/NeoPacked?color=orange&style=flat-square/>
      </a>
</div>

NeoPacked is a compact neovim config that fit for everyone needs. NeoPacked uses vimscript and lua in a one configuration, So it's not particularly a performance beast. NeoPacked is built for everyday programmer that just want to start using neovim that doesnt really care about the editor performance.

## ✨ Showcase ✨
![Dashboard](https://user-images.githubusercontent.com/108339770/176351253-3831355c-6d51-4fe0-ab69-27160a1aebea.png)
![Showcase_2](https://user-images.githubusercontent.com/108339770/176351657-e6f25b58-b1c1-41f3-8610-d032c8974122.png)
![Showcase_3](https://user-images.githubusercontent.com/108339770/176351953-560cfc54-c79d-44fc-9b59-bab765060c3a.png)

## 🔌 Plugins List
- Vscode like theme with [vim-code-dark](https://github.com/tomasiser/vim-code-dark)
- Pretty statusline by [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- File navigation / manager with [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- Basic but functional bufferline by [vim-buftabline](https://github.com/ap/vim-buftabline)
- Pretty and customizable terminal toggler by [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- Customizable screen greeter by [alpha-nvim](https://github.com/goolord/alpha-nvim)
- Fuzzy finder (file searching, previewing code, word finder, etc) by [fzf.vim](https://github.com/junegunn/fzf)
- Autocompletion with [coc.nvim](https://github.com/neoclide/coc.nvim)
- Syntax highlighting with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Autoclosing braces and html tags with  [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- Colorhighlighter for css, hex, etc (you need to manually configure it) by [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- Multiple cursor experience by [vim-visual-multi](https://github.com/mg979/vim-visual-multi)

## 📙 Read This
- This configuration only works for windows out of the box, you need to modify a few things to make this config work on other operating system

- I recommend not to clone and directly install this config, but to fork it, inspect the code, and adjust it to your preference. The best neovim configuration is what _you_ make, and this config is only supposed to provide you the tools to do so.

## ⚡ Requirement
- A patched font - [Nerd Font](https://www.nerdfonts.com/font-downloads)
- Neovim 0.7 and beyond - [Neovim 0.7 +](https://github.com/neovim/neovim/releases/tag/v0.7.0)
- Fuzzy Finder - [Fzf](https://github.com/junegunn/fzf)
- Git - [Git](https://git-scm.com/)
- C compiler for treesitter, like [llvm](https://llvm.org), [gcc](https://gcc.gnu.org), [cl](https://docs.microsoft.com/en-us/cpp/build/reference/compiler-options?view=msvc-170), [zig](https://ziglang.org/), etc
- Optional requirements:
	- [ripgrep](https://github.com/BurntSushi/ripgrep)
	- [Python](https://www.python.org/)
	- [Node](https://nodejs.org/en/)

## 🔨  Installation
##### Run these commands on powershell

#### Make a backup of your current nvim folder

```
move ~/AppData/Local/nvim ~/AppData/Local/nvimbackup
```

#### Clone the repository

```
git clone https://github.com/TheLaziestDog/NeoPacked
```
#### Install vim-plug
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```
####  Run Neovim (you may need to restart your terminal first)
```
nvim +PlugInstall
```

## 📦 Basic Setup
#### Install LSP (COC)

Enter `:CocInstall` followed by the name of the languge / server / extensions you want to install<br>
Example: `:CocInstall coc-pyright `

#### Install language parser

Enter `:TSInstall` followed by the name of the language you want to install<br>
Example: `:TSInstall python`

#### Manage plugins

Run `:PlugInstall` to install plugins<br>
Run `:PlugClean` to remove any disabled or unused plugins<br>
Run `:PlugUpdate` to update plugins<br>

## ❤️ Contribute
You can contribute any time on this project, if you want to discuss about this projects feel free to dm me on discord [Berlin#1034](). 
If you just want to ask question like if you had an error, just discuss it on [issues](https://github.com/TheLaziestDog/NeoPacked/issues).

## ⭐ Similiar Projects
- [NvChad](https://github.com/NvChad/NvChad) had inspired me to make this config, cause i want pretty design but fast performance
- [Lunarvim](https://github.com/LunarVim/LunarVim) introduce me to the world of vim configuration
- [AstroNvim](https://github.com/AstroNvim/AstroNvim) its kinda cool too
