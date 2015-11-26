. ~/.zsh/aliases.zsh
. ~/.zsh/config.zsh
. ~/.zsh/commands.zsh
. ~/.zsh/colors.zsh
. ~/.zsh/paths.zsh
. ~/.zsh/env.zsh

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=${PATH}:/Users/dimitar_v/Resources/adt-bundle-mac/sdk/platform-tools:/Users/dimitar_v/Resources/adt-bundle-mac/sdk/tools

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export NVM_DIR="/Users/dimitar_v/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
