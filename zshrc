
# -------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------
# SETTINGS
# -------------------------------------------------------------------------------------------

export PATH=/opt/homebrew/bin/:$HOME/.composer/vendor/bin:$HOME/.local/bin/:/usr/local/bin:${PATH}
export ZSH="/Users/r2luna/.oh-my-zsh"

ZSH_DISABLE_COMPFIX=true
ZSH_THEME="spaceship"


EMOJI=(🐧 💩 🚀 🍑 👽 💀)

RANDOM_EMOJI() {
  SELECTED_EMOJI=${EMOJI[$RANDOM % ${#EMOJI[@]}]};

  echo $SELECTED_EMOJI;
}

SPACESHIP_CHAR_SYMBOL="🐧 "
SPACESHIP_DIR_TRUNC="1"

plugins=(
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
  git-flow
  artisan
  composer
  z
  git-extras
)

source $ZSH/oh-my-zsh.sh


# -------------------------------------------------------------------------------------------
# APPLICATION SETTINGS
# -------------------------------------------------------------------------------------------

 export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


source $HOME/dotfiles/shell/macos/aliases.sh
source $HOME/dotfiles/shell/macos/functions.sh
