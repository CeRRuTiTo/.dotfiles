. ~/.zsh/aliases.zsh
. ~/.zsh/config.zsh
. ~/.zsh/commands.zsh
. ~/.zsh/colors.zsh
. ~/.zsh/paths.zsh
. ~/.zsh/env.zsh

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

#export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/Users/dimitar/.rvm/bin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

export PATH="$HOME/.node/bin:$PATH"

#https://gist.github.com/DanHerbert/9520689 - NPM problems

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Unbind <C-s> as XON/XOFF terminal flow
stty -ixon -ixoff
