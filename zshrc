. ~/.zsh/aliases.zsh
. ~/.zsh/config.zsh
. ~/.zsh/commands.zsh
. ~/.zsh/colors.zsh
. ~/.zsh/paths.zsh
. ~/.zsh/env.zsh

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
