if status --is-interactive
    keychain --quiet --nogui ~/.ssh/id_ed25519
end
source ~/.keychain/{{hostname}}-fish

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$HOME/.proto/bin:$PATH"
fish_add_path ~/.proto/tools/node/globals/bin

export BAT_THEME="catppuccin"
export EDITOR="hx"
export VISUAL="hx"

alias ls exa
alias bat batcat

starship init fish | source
