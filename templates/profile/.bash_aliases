alias loco="fblog -f 'string.lower(level) ~= \"info\" and string.lower(level) ~= \"debug\"'"
alias locoi="fblog -f 'string.lower(level) ~= \"debug\"'"

alias resetkb="sudo -u $(whoami) DISPLAY=:0 XAUTHORITY=$HOME/.Xauthority xdotool keyup --clearmodifiers Shift_L Shift_R Control_L Control_R Alt_L Alt_R Super_L Super_R"

#
# easy wrapper for encrypthing via gpg
#
gpge() {
    if [ "$#" -lt 2 ]; then
        echo "Usage: gpge <password> <file> [file ...]" >&2
        return 1
    fi

    local pass="$1"
    local file
    local input_abs

    shift

    for file in "$@"; do
        input_abs="$(realpath -- "$file")" || return 1

        printf "%s" "$pass" | gpg \
            --batch \
            --yes \
            --pinentry-mode loopback \
            --symmetric \
            --cipher-algo AES256 \
            --passphrase-fd 0 \
            -o "${input_abs}.gpg" \
            "$input_abs" || return 1
    done

    unset pass
}