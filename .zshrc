# Add custom python binaries to the front
export PATH=$HOME/.local/bin:/opt/homebrew/opt/python@3.12/libexec/bin:$PATH

# Sonos
export SPKR='Media Room'

# map HOME and END to the following "widgets"
# https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Zle-Builtins
bindkey '\e[H'    beginning-of-line
bindkey '\e[F'    end-of-line

alias ll="ls -alGh"
alias dotfiles='git --git-dir=$HOME/GitHub/dotfiles --work-tree=$HOME'

# https://starship.rs/
eval "$(starship init zsh)"
