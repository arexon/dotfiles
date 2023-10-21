keychain --quiet ~/.ssh/id_ed25519 --host falcon
source ~/.keychain/falcon-fish

alias hx helix
alias zj zellij
alias ls exa
alias ll "exa -la"
alias clear "clear && printf '\e[H\ec\e[100B'"

set -x EDITOR helix
set -g fish_greeting

starship init fish | source
printf "\e[H\ec\e[100B"
