if status --is-interactive
    keychain --quiet --nogui ~/.ssh/id_ed25519
end

source ~/.keychain/fish

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME.deno/bin:$PATH"
export PATH "$HOME/.local/share/pnpm"

export BAT_THEME="catppuccin"
export EDITOR="nvim"
export VISUAL="nvim"

starship init fish | source
