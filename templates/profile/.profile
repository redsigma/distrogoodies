# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

if [ -z "${DISPLAY:-}" ] && [ -z "${WAYLAND_DISPLAY:-}" ]; then
    case ":${PATH:-}:" in
        *":${HOME}/.local/bin:"*) ;;
        *)
            if [ -x /usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator ]; then
                set -a
                eval "$(/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator 2>/dev/null)"
                set +a
            fi
            ;;
    esac
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	    . "$HOME/.bashrc"
    fi
fi
