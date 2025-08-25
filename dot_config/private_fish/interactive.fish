# ~/.config/fish/interactive.fish

if type -q fastfetch
    fastfetch
    tput cup $COLUMNS 0
end

function fish_greeting

end

function zz
    set last_command (history | head -n 1)

    if test -n "$last_command"
        echo "Ejecutando: $last_command"

        eval $last_command | tee /dev/tty | xclip -selection clipboard

        echo "Copied to clipboard ✓"
    else
        echo "Nothing to copy"
    end
end
