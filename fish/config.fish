keychain --quiet ~/.ssh/id_ed25519 --host falcon
source ~/.keychain/falcon-fish

alias hx helix
alias zj zellij

set -x EDITOR helix
set -g fish_greeting

starship init fish | source
