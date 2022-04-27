# Dotfiles

I use this personally for all my ZSH customisation. You can use it also but you might need
to install the zsh plugins, and brew formulas etc. before activating it.

To use it, clone the repository and then run the `install.sh` command which will replace
 your existing `.zshrc` file with the one in this repo.

### Zsh
This was made specifically for oh-my-zsh. You might need to customise it for another shell.
#### Plugins
- git (Already bundled with zsh)
- [zsh-autosuggestions][1]
- [zsh-syntax-highlighting][2]

#### Theme
Robbyrussell - The default theme

### Adding Custom Stuff
Some times, you have packages or exports etc. that is very specific to a development machine. Here are the files you can use to create them:
- `~/.dotfiles/setups/brew.sh` – Install apps, packages or plugins
- `~/.dotfiles/setups/clone-repos.sh` – Clone repositories from git

[1]: https://github.com/zsh-users/zsh-autosuggestions
[2]: https://github.com/zsh-users/zsh-syntax-highlighting
