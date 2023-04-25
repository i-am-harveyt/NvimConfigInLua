# Nvim Config in Lua

<!--toc:start-->

- [Nvim Config in Lua](#nvim-config-in-lua)
  - [Upload 0911 2022](#upload-0911-2022)
  - [Intro](#intro)
  - [Install](#install)
  - [Usage](#usage)
    - [Options and Setting](#options-and-setting)
    - [Which-key](#which-key)
    - [LSP and Auto-complete](#lsp-and-auto-complete)
    - [Costumize your plugins](#costumize-your-plugins)
  - [Uninstall](#uninstall)
  <!--toc:end-->

## Upload 0425 2023

Migrate from `Packer.nvim` to `Lazy.nvim`, and a couple modifications.

## Intro

This is a config that I've setup for my neovim use. And almost all comfig is written in Lua.

Someone may like auto-format when writing code, but I'm not a big fan of it.

When setting up this, I mainly refers to [Cosynvim](https://github.com/glepnir/cosynvim) and [Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch). They are all very good, and I've learned so much from them. Even though I'm still not familiar of creating APIs and so many other cool things.

If you need a more well-configured, faster and stable one, the two repos I've mentioned are good options, and I've used [LunarVim](https://github.com/LunarVim/LunarVim) and [AstroNvim](https://github.com/AstroNvim/AstroNvim) before, both of them are great, I personally prefer the latter one.

I'm doing this just because there're some keymaps that I'm more familiar with, like `<Space>fs` stands for `save`, and `<Space>tf` stands for floating-terminal, and so on. Moreover, I personally don't use that much plugins or functions, so I want to make a quite minimal config.

HarveyT

## Install

Make a backup of your current neovim config

```
mv ~/.config/nvim/ ~/.config/nvimbackup
```

Clone this repo

```
git clone https://github.com/i-am-harveyt/NvimConfigInLua ~/.config/nvim
nvim
```

## Usage

### Options and Setting

I didn't expect for someone may change the config on their own, and slso, I have not configured out how to make APIs on my own.

Therefore, setting options may be a little inconvenient.

Here are some hint or rules when I manage files, knowing this may help you to find the option a little bit easier.

1. If you want to adjust something I've set. Goto `~/.config/nvim/` then use `:Telescope live_grep` may be the most efficient way to find where the option is.

2. The most basic option, such as line number, encoding, tabstop, they're in `~/.config/nvim/lua/core/opt.lua`.

3. The most general keymappings like leaderkey, windows, are in `~/.config/nvim/lua/plugins/which-key.lua`, module-related keymappings are in the `~/.config/nvim/lua/modules/<module_name>.lua`.

4. If you want to customize header on dashboard, goto `~/.config/nvim/lua/plugins/alpha-nvim.lua`, you'll know where to change it.

### Which-key

Hit the leader key (`<spc>` is default) to trigger which-key, and you can hit the key correspond to the function you want to use.

For example, Save file = `<spc>fs`, `<space>` to trigger which-key, `f` stands for `file`, `s` stands for `save`.

### LSP and Auto-complete

I use [Mason]() as the LSP installer manager. You can call mason via `<Leader>lI`.

### Costumize your plugins

I put plugins requirement in `nvim/lua/plugins/init.lua`.

Most of the modules and setups are in `nvim/lua/plugins/<plugin-name>.lua`

So if you want to remove, just delete the `nvim/lua/modules/<plugin-name>.lua` folder and remove `{ <plugin-name> },`in `nvim/lua/plugins/init.lua`. Then, `<Cmd>Lazy<Enter>`, done!

And if you want to add plugin, what you need to do is:

1. Make a file in `nvim/lua/plugins`.

   For example: `nvim/lua/plugins/<module-name>.lua`.

2. Add `{ "acc/repo" }` in `init.lua`.

3. Quit, and run command `nvim +Lazy` to Sync the plugin(s).

## Uninstall

Remove the folder

```
rm -rf ~/.config/nvim/
```

Reset your previous config

```
mv ~/.config/nvimbackup/ ~/.config/nvim/
```
