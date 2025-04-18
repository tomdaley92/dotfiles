# Add preferred python binaries to the front
export PATH=$HOME/.local/bin:/opt/homebrew/opt/python@3.12/libexec/bin:$PATH

# Sonos
export SPKR='Media Room'

# Homebrew backup and restore functions
function brew-backup () {
    brew bundle dump --force --file $HOME/.brewfile
}

function brew-restore () {
    brew bundle install --file $HOME/.brewfile
}

# Oh My ZShell
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(
    git
    docker
    dotenv
    ssh-agent
    starship
)
source $ZSH/oh-my-zsh.sh

# Type 'fuck' to fix mistyped commands
eval $(thefuck --alias)

alias ll="ls -alGh"

# https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles/
alias dotfiles='/usr/bin/git --git-dir=$HOME/GitHub/dotfiles.git --work-tree=$HOME'
