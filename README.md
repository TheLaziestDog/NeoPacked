<h1 align="center">💪 NvBased 💪</h1>
<div align="center"><p>
    <a href="https://github.com/TheLaziestDog/NvBased/pulse">
      <img src="https://img.shields.io/github/last-commit/TheLaziestDog/NvBased?color=%4dc71f&label=Last%20Commit&logo=github&style=flat-square"/>
    </a>
    <a href="https://neovim.io/">
      <img src="https://img.shields.io/badge/Neovim-0.7+-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=white"/>
</div>

## ✨ Showcase ✨
![Dashboard](https://user-images.githubusercontent.com/108339770/176351253-3831355c-6d51-4fe0-ab69-27160a1aebea.png)
![Showcase_2](https://user-images.githubusercontent.com/108339770/176351657-e6f25b58-b1c1-41f3-8610-d032c8974122.png)
![Showcase_3](https://user-images.githubusercontent.com/108339770/176351953-560cfc54-c79d-44fc-9b59-bab765060c3a.png)

## ✨ Features
- Vscode like colorscheme with [vim-code-dark](https://github.com/tomasiser/vim-code-dark)
- Pretty statusline by [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- File navigation / manager with [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- Basic but functional bufferline by [vim-buftabline](https://github.com/ap/vim-buftabline)
- Pretty and customizable terminal by [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- Cool screen greeter by [alpha-nvim](https://github.com/goolord/alpha-nvim)
- Fuzzy finder by [fzf.vim](https://github.com/junegunn/fzf)
- Autocompletion with [coc.nvim](https://github.com/neoclide/coc.nvim)
- Syntax highlighting with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

## 📙 Read This
- If you want this configuration for your own neovim, dont clone this repo, just copy the code and modify it, cause there's a few things that you must change or modify to make this config to work, like the vim plug, git, fzf, etc. 

- Clone this repo if you know how to modify all of this stuff to suit your system.

## ⚡ Requirement
- A patched font - [Nerd Font](https://www.nerdfonts.com/font-downloads)
- Neovim 0.7 and beyond - [Neovim 0.7 +](https://github.com/neovim/neovim/releases/tag/v0.7.0)
- Fuzzy Finder - [Fzf](https://github.com/junegunn/fzf)
- Git - [Git](https://git-scm.com/)
- Optional requirements:
	- [ripgrep](https://github.com/BurntSushi/ripgrep)
	- [Python](https://www.python.org/)
	- [Node](https://nodejs.org/en/)
	- C compiler for treesitter, like [llvm](https://llvm.org), [gcc](https://gcc.gnu.org), [cl](https://docs.microsoft.com/en-us/cpp/build/reference/compiler-options?view=msvc-170), [zig](https://ziglang.org/), etc

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
You can contribute any time on this project, if you want to discuss about this projects just hit me up on discord [Berlin#1034](), my dm's are open to everyone. 
If you just want to ask question like if you had an error, just discuss it on issues.

## ⭐ Similiar Projects
- ✨ [NvChad](https://github.com/NvChad/NvChad) had inspired me to make this config, cause i want pretty design but fast performance
- ✨ [Lunarvim](https://github.com/LunarVim/LunarVim) introduce me to the world of vim configuration
- ✨ [AstroNvim](https://github.com/AstroNvim/AstroNvim) its kinda cool too
