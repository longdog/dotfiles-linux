if status is-interactive
    # Commands to run in interactive sessions can go here
end

# unset fish greeting
set fish_greeting

set -x  PATH $PATH $HOME/.local/bin
set -x TERMINAL alacritty
set -x EDITOR "hx"
set -x VISUAL "hx"
set --universal FZF_DEFAULT_COMMAND 'fd'

# Aliases
source $HOME/.config/fish/aliases.fish

#JAVA HOME
. ~/.asdf/plugins/java/set-java-home.fish

# source ~/.asdf/asdf.fish

# ASDF
if test -e ~/.asdf/asdf.fish
    # Manually add asdf dirs to path, to avoid having them prepended
    fish_add_path -aP ~/.asdf/bin
    fish_add_path -aP ~/.asdf/shims

    source ~/.asdf/asdf.fish

    if ! test -e ~/.config/fish/completions/asdf.fish
        mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
    end
end
