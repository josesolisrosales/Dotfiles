EDITOR='vim'
export STARSHIP_CONFIG=~/.starship.toml
export VIRTUAL_ENV_DISABLE_PROMPT=1

autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit

PROMPT_EOL_MARK=' '
ZSH_DISABLE_COMPFIX="true"

setopt share_history

export ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM=/Users/josesolis/.omz-custom-config
ZSH_THEME="robbyrussell"

plugins=(copyfile zsh-autosuggestions pyenv sudo aws z kubectl)

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 14

export PATH="/opt/homebrew/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export PATH="$HOME/Library/Python/3.9/bin:$PATH"
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

EDITOR="vim"

eval "$(starship init zsh)"

