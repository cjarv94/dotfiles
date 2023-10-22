# My Linux Dotfiles

## Using `dotlink`

`dotlink` is a simple shell script that creates symbolic links from your dotfiles folder to the rest of your system. If you want to use my neovim config, for example, it's as simple as `dotlink .config/nvim` and you're done!

### Installing `dotlink`

The assumed dotfiles directory is `~/dotfiles`. If you are keeping your dotfiles elsewhere, set the `DOTFILES_DIR` variable accordingly.

```sh
~/dotfiles/.local/bin/dotlink install
# Dotlink is now installed to ~/.local/bin/dotlink
```
