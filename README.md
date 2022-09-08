# Nvim Config in Lua

## Intro

This is a config that I've setup for my neovim use. And almost all config is written in Lua.

Someone may like auto-format when writing code, but I'm not a big fan of it.

When setting up this, I mainly refers to [Cosynvim](https://github.com/glepnir/cosynvim) and [Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch). They are all very good, and I've learned so much from them. Even though I'm still not familiar of creating APIs and so many other cool things.

If you need a more well-configured, faster and stable one, the two repos I've mentioned are good options, and I've used [LunarVim](https://github.com/LunarVim/LunarVim) and [AstroNvim](https://github.com/AstroNvim/AstroNvim) before, both of them are great, I personally prefer the latter one.

I'm doing this just because there're some keymaps that I'm more familiar to, like `<Space>fs` stands for `save`, and `<Space>tf` stands for floating-terminal, and so on. Moreover, I personally don't use that much plugins or functions, so I want to make a quite minimal config.

HarveyT

## Install

Make a backup of your current neovim config

```
mv ~/.config/nvim/ ~/.config/nvimbackup
```

Clone this repo


```
git clone https://github.com/i-am-harveyt/NvimConfigInLua ~/.config/nvim
nvim +PackerSync
```

## Usage

### Options and Setting

I didn't expect for someone may change the config on their own, and also, I have not configured out how to make APIs on my own. 

Therefore, setting options may be a little inconvenient.

Here are some hint or rules when I manage files, knowing this may help you to find the option a little bit easier.

1. If you want to adjust something I've set. Goto `~/.config/nvim/` then use `:Telescope live_grep` may be the most efficient way to find where the option is.

2. The most basic option, such as line number, encoding, tabstop, they're in `~/.config/nvim/lua/core/options.lua`. 

3. The most general keymappings like leaderkey, windows, are in `~/.config/nvim/lua/modules/whichkey/init.lua`, module-related keymappings are in the `~/.config/nvim/lua/modules/<module_name>/init.lua`.

4. If you want to customize header on dashboard, goto `~/.config/nvim/lua/modules/alpha/init.lua`, you'll know where to change it.

### Which-key

Hit the leader key (`<spc>` is default) to trigger which-key, and you can hit the key correspond to the function you want to use.

For example, Save file = `<spc>fs`, `<space>` to trigger which-key, `f` stands for `file`, `s` stands for `save`.

### LSP and Auto-complete

I use [Mason](https://github.com/williamboman/mason.nvim) as the LSP installer manager. You can call mason via `<Leader>lI`.


## Uninstall

Remove the folder

```
rm -rf ~/.config/nvim/
```

Reset your previous config

```
mv ~/.config/nvimbackup/ ~/.config/nvim/
```
