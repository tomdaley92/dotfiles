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
alias dotfiles='/usr/bin/git --git-dir=$HOME/GitHub/dotfiles --work-tree=$HOME'

# https://starship.rs/
eval "$(starship init zsh)"
