# ENV VARS
set -Ux ASDF_DATA_DIR $HOME/.asdf
set -Ux EDITOR hx
export BUN_INSTALL="$HOME/.bun"

# PATH
export PATH="$BUN_INSTALL/bin:$PATH"
set -Ua PATH $ASDF_DATA_DIR/shims
set -Ua PATH $HOME/.local/bin
set -Ua PATH /home/linuxbrew/.linuxbrew/bin
set -Ua PATH $HOME/.cargo/bin

# Aliases
alias nanon nano
alias nano vim
alias yt yt-dlp
alias cat bat
alias yoink "xclip -selection clipboard"
alias op opencode
alias ls "ls --color=auto"

# FUCK NANO
function sudo
    if test (count $argv) -ge 1; and test $argv[1] = nano
        command sudo vim $argv[2..-1]
    else
        command sudo $argv
    end
end

# ASDF
if type -q asdf
    source (asdf completion fish | psub)
end

# Homebrew
if test -f /home/linuxbrew/.linuxbrew/bin/brew
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

# fzf
if type -q fzf
    eval (fzf --fish)
end

# zoxide
set -Ux _ZO_DOCTOR 0
if type -q zoxide
    zoxide init fish | source
end

# thefuck
if type -q thefuck
    thefuck --alias | source
end

# atuin
if type -q atuin
    atuin init fish | source
end

# starship
if type -q starship
    starship init fish | source
end

if status is-interactive
    source ~/.config/fish/interactive.fish
    # if not set -q TMUX
    #     if type -q tmux
    #         tmux attach -t wk1
    #     end
    # end
end
