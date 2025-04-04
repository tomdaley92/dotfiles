# Add custom python binaries to the front
export PATH=$HOME/.local/bin:/opt/homebrew/opt/python@3.12/libexec/bin:$PATH

# Sonos
export SPKR='Media Room'

function brew-backup () {
    brew bundle dump --force --file $HOME/.brewfile
}

function brew-restore () {
    brew bundle install --file $HOME/.brewfile
}

alias ll="ls -alGh"

# https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles/
alias dotfiles='/usr/bin/git --git-dir=$HOME/GitHub/dotfiles.git --work-tree=$HOME'

# https://starship.rs/
eval "$(starship init zsh)"

# zsh-autosuggestions
export ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd history completion)
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval $(thefuck --alias)
