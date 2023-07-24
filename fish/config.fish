if status --is-interactive
    keychain --quiet --nogui ~/.ssh/id_ed25519
end
source ~/.keychain/{{hostname}}-fish

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$HOME/.proto/bin:$PATH"
fish_add_path ~/.proto/tools/node/globals/bin
fish_add_path ~/.fly/bin

export BAT_THEME="catppuccin"
export EDITOR="nvim"
export VISUAL="nvim"

alias v="nvim"
alias ls="exa"
alias bat="batcat"

starship init fish | source
